// $Id: ngrammlogger.c,v 1.3 2012/05/05 08:28:08 andreas Exp $

// Übersetzen:
//   g++ -O2 -DNDEBUG ngrammlogger.c -I/usr/X11R7/include -L/usr/X11R7/lib -rpath=/usr/X11R7/lib -lXtst -lX11 -o ngrammlogger
// oder ähnlich.

// Benutzen:
// ./ngrammlogger             für Ausgabe auf stdout
// ./ngrammlogger filename &  für das Sammeln von Statistik in einem File.

// Copyright (c) 2012, Andreas Wettstein
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
//     - Redistributions of source code must retain the above copyright notice,
//       this list of conditions and the following disclaimer.
//     - Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

#include <cassert>
#include <fstream>
#include <iostream>
#include <map>
#include <poll.h>
#include <signal.h>
#include <string>
#include <X11/Xlibint.h>
#include <X11/Xlib.h>
#include <X11/XKBlib.h>
#include <X11/extensions/record.h>

const int N = 3;                     // N ist das N in N-gramm.
const Time maximalzeit = 500*(N-1);  // in Millisekunden; N-gramme, die langsamer
			             // getippt werden kommen nicht in die Statistik.
const Time minimalzeit = 5;
const int schreibinterval = 1000; // nach wievielen N-Grammen die Statistik ins File
                                  // geschrieben wird.

typedef unsigned long long Time2;

class Ngramm {
    KeyCode t[N];
public:
    KeyCode  operator[](int i) const{ assert(i < N); return t[i]; }
    KeyCode& operator[](int i)      { assert(i < N); return t[i]; }

    bool operator<(const Ngramm& o) const{
	for(int i = 0; i < N; ++i){
	    if(t[i] < o.t[i]) return true;
	    if(t[i] > o.t[i]) return false;
	}
	return false;
    }
};

class AkkumulierteZeit {
    Time dt[N-1];
    Time2 dt2[(N*(N-1))/2];
    unsigned num;
public:
    AkkumulierteZeit(Time x[N-1],
		     Time2 x2[N-1][N-1],
		     unsigned n) : num(n)
    {
	for(int i = 0; i < N-1; ++i){
	    dt[i]  = x[i];
	    for(int j = 0; j <= i; ++j){
		assert(x2[i][j] == x2[j][i]);
		dt2[(i*(i+1))/2+j] = x2[i][j];
	    }
	}
    }

    AkkumulierteZeit(Time t[N]) : num(1)
    {
	for(int i = 0; i < N-1; ++i){
	    dt[i]  = t[i+1]-t[i];
	    for(int j = 0; j <= i; ++j)
		dt2[(i*(i+1))/2+j] = (t[i+1]-t[i])*(t[j+1]-t[j]);
	}
    }

    void neueMessung(Time t[N]){
	for(int i = 0; i < N-1; ++i){
	    dt[i]  += t[i+1]-t[i];
	    for(int j = 0; j <= i; ++j)
		dt2[(i*(i+1))/2+j] += (t[i+1]-t[i])*(t[j+1]-t[j]);
	}
	++num;
    }

    const unsigned n()    const{ return num; }
    const Time  x(int i)  const{ assert(i < N-1); return dt[i];  }
    const Time2 x2(int i, int j) const{
	assert(i < N-1 && j < N-1);
	return dt2[j <= i ? (i*(i+1))/2+j : (j*(j+1))/2+i];
    }
};

std::map<Ngramm, AkkumulierteZeit> statistik;

char tastennamen[256][XkbKeyNameLength+1];
std::map<std::string, int> tastennummern;

const char* ausgabefile = 0;
volatile bool schreibegerade = false, aktiv = true;

void lies_statistik(const char* name){
    std::ifstream f(name);
    if(!f) return;
    while(f){
	char c = 0; unsigned h;
	f >> h;  if(f) f.get(c);
 	if(h == 0 || c != ' ') break;
	Time x[N-1]; Time2 x2[N-1][N-1];
	Ngramm ngramm;
	std::string name;
	for(int i = 0; i < N-1; ++i){
	    f >> name; ngramm[i] = tastennummern[name];
	    f >> x[i];
	}
	f >> name;  ngramm[N-1] = tastennummern[name];
	for(int i = 0; i < N-1; ++i){
	    for(int j = 0; j <= i; ++j){
		f >> x2[i][j];
		x2[j][i] = x2[i][j];
	    }
	}
	statistik.insert(std::make_pair(ngramm, AkkumulierteZeit(x, x2, h)));
    }
}

void schreibe_statistik(const char* name){
    schreibegerade = true;
    std::ofstream f(name, std::ios_base::out);
    for(std::map<Ngramm, AkkumulierteZeit>::const_iterator i = statistik.begin();
	i != statistik.end(); ++i){
	const Ngramm& ngramm = i->first;
	const AkkumulierteZeit& a = i->second;
	f << a.n();
	for(int j = 0; j < N-1; ++j)
	    f << " " << tastennamen[ngramm[j]]
	      << " " << a.x(j);
	f << " " << tastennamen[ngramm[N-1]];
	for(int j = 0; j < N-1; ++j)
	    for(int k = 0; k <= j; ++k)
		f << " " << a.x2(j,k);
	f << std::endl;
    }
    f.close();
    schreibegerade = false;
}

Time zeit[N];

void callback(XPointer, XRecordInterceptData *id){
    static Ngramm ngramm;
    static int zaehler;
    if(aktiv && id->category == XRecordFromServer){
	xEvent* xe = (xEvent*)id->data;
	int num = id->data_len/8;
	while(num--){
	    if(xe->u.u.type == KeyPress){
		zaehler++;
		ngramm[N-1] = xe->u.u.detail;
		zeit[N-1] = id->server_time;
		if(!ausgabefile && zeit[N-2] != 0){
		    std::cout << tastennamen[ngramm[N-2]]
			      << "  " << zeit[N-1]-zeit[N-2]
			      << "  " << tastennamen[ngramm[N-1]]
			      << std::endl;
		}else{
		    bool ok = (zeit[N-1]-zeit[0] <= maximalzeit);
		    for(int i = 0; i < N-1; ++i)
			ok &= (zeit[i+1]-zeit[i] >= minimalzeit);

		    if(ok){
			std::map<Ngramm, AkkumulierteZeit>::iterator i = statistik.find(ngramm);
			if(i != statistik.end()){
			    i->second.neueMessung(zeit);
			}else{
			    statistik.insert(std::make_pair(ngramm, AkkumulierteZeit(zeit)));;
			}

			if(zaehler >= schreibinterval){
			    if(ausgabefile) schreibe_statistik(ausgabefile);
			    zaehler = 0;
			}
		    }
		}
		for(int i = 0; i < N-1; ++i){
		    zeit[i] = zeit[i+1];
		    ngramm[i] = ngramm[i+1];
		}
	    }
	    xe++;
	}
    }
    XRecordFreeData(id);
}

void abbruch(int){
    if(!schreibegerade && ausgabefile != 0)
	schreibe_statistik(ausgabefile);
    exit(0);
}

void fehler(const char* msg){
    std::cerr << "Fehler: " << msg << std::endl;
    exit(1);
}

void abschalten(int){
    aktiv = false;
    for(int i = 0; i < N; ++i) zeit[i] = 0;
}
void einschalten(int){
    aktiv = true;
}


int main(int argn, char** argv){
    int errcode, statcode, xkb_basecode;
    Display* cdpy = XkbOpenDisplay(NULL, &xkb_basecode, &errcode, NULL, NULL, &statcode);
    Display* ddpy = XkbOpenDisplay(NULL, &xkb_basecode, &errcode, NULL, NULL, &statcode);
    if(!cdpy) fehler("Kann Display nicht öffnen.");

    XkbDescRec* beschreibung = XkbGetMap(ddpy, 0, XkbUseCoreKbd);
    if(!beschreibung){
	fehler("Die Beschreibung der Tastatur nicht verfügbar.");
	exit(1);
    }

    if(XkbGetNames(ddpy, XkbKeyNamesMask | XkbKeyAliasesMask, beschreibung) != Success){
	fehler("Die Tastennamen sind nicht verfügbar.");
	exit(1);
    }

    XkbNamesRec* namen = beschreibung->names;

    const int mincode  = beschreibung->min_key_code;
    const int maxcode  = beschreibung->max_key_code;
    for(int i = mincode; i <= maxcode; ++i){
	tastennamen[i][XkbKeyNameLength] = 0;
	memcpy(tastennamen[i], namen->keys[i].name, XkbKeyNameLength);
	if(tastennamen[i][0])
	    tastennummern[tastennamen[i]] = i;
    }

    if(argn == 2) ausgabefile = argv[1];

    if(ausgabefile){
	lies_statistik(ausgabefile);
	signal(SIGINT, abbruch);
	signal(SIGHUP, abbruch);
	signal(SIGTERM, abbruch);
    }
    signal(SIGUSR1, abschalten);
    signal(SIGUSR2, einschalten);

    XRecordRange* rr = XRecordAllocRange();
    if(!rr) fehler("Kann XRecordRange nicht anlegen.");
    memset(rr, 0, sizeof(XRecordRange));
    rr->device_events.first = KeyPress;
    rr->device_events.last  = KeyRelease;

    int r1, r2;
    if(!XRecordQueryVersion(cdpy, &r1, &r2))
	fehler("XRecord extension nicht aktiv.");

    XRecordClientSpec rs = XRecordAllClients;
    XRecordContext rc = XRecordCreateContext(cdpy, 0, &rs, 1, &rr, 1);
    if(!rc) fehler("Kann XRecordContext nicht anlegen.");

    XSynchronize(ddpy, True);
    if(!XRecordEnableContextAsync(cdpy, rc, callback, (XPointer)ddpy))
	fehler("Kann Aufzeichnung nicht einschalten.");

    while(true){
	pollfd pf = { ConnectionNumber(cdpy), POLLIN | POLLRDNORM | POLLRDBAND, 0 };
	while(poll(&pf, 1, -1) >= 0)
	    XRecordProcessReplies(cdpy);
    }
    return 0;
}
