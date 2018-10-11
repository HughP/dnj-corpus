#Text Input Evaluations
## Usage

I use this program to take the final corpus and then convert it for analysis with Typing. I convert the characters in the corpus to what they would be if the same keystrokes would have been made on a QWERTY keyboard.

example commandline usage:
`silcc -u -t mande-table.cct final-corpus.txt > final-corpus-as-qwerty.txt`

## Folder Contents

I keep the various files needed by CC and the small corpora of James as modified for counting purposes.
The folder is organized by language rather than by text input. This is because several languages can sometimes be input with the same text input – and my analysis framework is measuring languages.

## Information on keyboard solutions

### Background languages

* [cmn] None?
* [eng] the base for QWERTY
* [fra] BEPO, AWERTY, Trans-Mande, AFU
* [spa] Spanish
* [tcf] Me'phaa

### Eastern Dan
As far as is known there are possibly five keyboard solutions in possible use among Eastern Dan language users.

1. SIL Pan-Africa
2. Pan Africa Positional (SIL)
3. LIBTRALO keyboard https://keyman.com/keyboards/libtralo
4. FRA -AFU from LLACAN http://llacan.vjf.cnrs.fr/res_manuels_en.php
5. A trans-Mande keyboard in use by Valentin Vydrin.

SIL Pan-Africa is deprecated and replaced by  Pan Africa Positional (SIL). SIL Pan-Africa is documented at http://scripts.sil.org/AfricanKeyboard1. These are QWERTY ANSI keyboard based layouts. Which were not tested in this study.

The LIBTRALO keyboard is focused on Eastern Dan as it is spoken in Liberia, which has a slightly different orthography. As such it has not been investigated as part of this study.

The French based AFU keyboard assumes an ISO based keyboard layout on windows only. It is distributed as a `.msi` file, for which the orginal author no-longer has the `.klc` file. The AFU has as its base layout the AZERTY layout. In general the AFU keyboard is a deadkey-base pattern input solution.

The FRA AFU Keyboard from CNRS installed on a Windows 10 laptop with a built in ANSI keyboard does not include a solution for the B99 key. This is the "extra" key (left of "z") for typing the "greater-than" />/ or "less-than" /</ keys on the AZERTY layout. That is, even if the laptop has a touch screen the "greater-than" />/ or "less-than" /</ key does not show in the visualization of the virtual keyboard. This is in contrast to the French AZERTY keyboard that is the default included keyboard for Windows 10. For the default French Keyboard, the visualization of the keyboard on the touch screen includes the B99 or "extra" key that is in the location of the "large" English QWERTY keyboard Shift key. Even if the physical keyboard on the laptop is an ANSI keyboard layout.

In this way the AFU keyboard layout is deficient, as it is distributed it can not serve multiple operating systems, and even within an operating system it is not flexible enough to respond to the various kinds of hardware which might be available to language users. the AFU keyboard does not support the punctuation modifier-letter characters which are required by the Eastern Dan orthography. For analysis these characters where computed in the positions in which they would be typed by their closes look alike character.

The Trans-Mande keyboard has a QWERTY base but is Windows only. It is not clear if it is designed for ISO or for ASNI keyboards, as an ISO on windows is not currently available for testing. The trans-Mande keyboard, has a base-deadkey input pattern, though some modifiers are in layers which require an additional state to be entered before they can be used (double modifier keys).

The trans-Mande Keyboard does not support the punctuation modifier-letter characters which are required by the Eastern Dan orthography. For analysis these characters where computed in the positions in which they would be typed by their closest look-alike character. In fact this is one of the common things that the corpus clean up fixed (various usages of look-alike characters).

## Keyboard analysis
### Trans-Mande Keyboard Layout

When analysed with program `Typing`, the Trans-Mande Keyboard performs on Eastern Dan full final corpus text with the following scores:
```
Hands: 55% 44%
Fingers: 8.0% 8.0% 18% 21% 0.00% 0.00% 18% 9.0% 12% 4.0%

 ~  !  @  #  $  %   ^  &  *  (  )  _  +    
    Q  W  E  R  T   Y  U  I  O  P  {  }  |
    A  S  D  F  G   H  J  K  L  :  "       
    Z  X  C  V  B   N  M  <  >  ?          

 `  1  2  3  4  5   6  7  8  9  0  -  =    
    q  w  e  r  t   y  u  i  o  p  [  ]  \
    a  s  d  f  g   h  j  k  l  ;  '       
    z  x  c  v  b   n  m  ,  .  /          

Fitness:       43551834
Distance:      26810775
Finger work:   206304
Inward rolls:  0.05%
Outward rolls: 0.09%
Same hand:     97.51%
Same finger:   0.18%
Row change:    0.00%
Home jump:     0.00%
Ring jump:     0.08%
To center:     0.09%
To outside:    0.03%
```
To get this evaluation the  final corpus was converted in such a way so that characters were mapped to QWERTY. Then the corpus was evaluated on the bases using QWERTY in the TYPING tools. This means that even though the test results show a QWERTY keyboard, the letters don't represent the letters on the QWERTY keyboard, rather they are a single byte notation for the key position of some character accessed via that key with the trans-Mande keyboard layout.

Within typing two variables were set.  The first was `setksize` this was set to `standard`, the second was to use the `compare` command and get the score for the Trans-Mande keyboard layout on the full corpus. A single file was created with the QWERTY keyboard layout: `qwertyStore.txt`

If we take the hypothetical situation and say that the pairing of deadkeys and the character combinations available via these deadkeys is reasonable, then what would be a better arrangement based on the Eastern Dan language for these keys? On a first run with `Typing` to suggest an optimized layout for Eastern Dan the following was suggested after 13 minutes of running on Linux (64 bit Ubuntu 16.04) on a Lenovo Thinkpad with an Intel® Core™ i7-3520M CPU @ 2.90GHz × 4 (cores) and 16GB of RAM.
```
***Found from greatToBest()***

Hands: 50% 49%
Fingers: 9.0% 9.0% 19% 14% 0.00% 0.00% 15% 15% 10% 9.0%

 ^  `  [  {  <  |   ~  >  }  ]  %  Q  Z    
    Y  P  O  U  *   K  D  L  C  W  X  +  @
    I  N  E  A  ;   M  H  T  S  R  ?       
    #  !  =  :  &   B  F  G  V  J          

 \  1  2  3  4  5   6  7  8  9  0  q  z    
    y  p  o  u  -   k  d  l  c  w  x  /  $
    i  n  e  a  ,   m  h  t  s  r  "       
    (  )  '  .  _   b  f  g  v  j          

Fitness:       17382638
Distance:      13601730
Finger work:   32418
Inward rolls:  10.10%
Outward rolls: 2.35%
Same hand:     34.46%
Same finger:   1.54%
Row change:    12.81%
Home jump:     1.08%
Ring jump:     3.17%
To center:     2.76%
To outside:    0.45%

Time elapsed: 0 hours, 13 minutes, 43 seconds
Chance to use previous layout is now 0.691987.
Number of swaps between rounds is now 17.
```
In a second test of ~3.5 hours yielded the following series of results.
```
***Found from greatToBest()***

Hands: 50% 49%
Fingers: 9.0% 9.0% 19% 14% 0.00% 0.00% 15% 15% 10% 9.0%

 ^  %  <  >  {  |   `  }  [  ]  #  Q  Z    
    Y  P  O  U  ?   K  D  L  C  W  X  *  @
    I  N  E  A  :   M  H  T  S  R  =       
    ~  +  &  ;  !   B  F  G  V  J          

 \  1  2  3  4  5   6  7  8  9  0  q  z    
    y  p  o  u  -   k  d  l  c  w  x  /  $
    i  n  e  a  ,   m  h  t  s  r  "       
    '  (  )  .  _   b  f  g  v  j          

Fitness:       17385653
Distance:      13632295
Finger work:   46258
Inward rolls:  10.19%
Outward rolls: 2.33%
Same hand:     34.50%
Same finger:   1.55%
Row change:    12.78%
Home jump:     1.07%
Ring jump:     3.14%
To center:     2.77%
To outside:    0.42%

Time elapsed: 2 hours, 5 minutes, 50 seconds
Number of rounds in greatToBest() is now 65536.

***Found from greatToBest()***

Hands: 50% 49%
Fingers: 9.0% 9.0% 19% 14% 0.00% 0.00% 15% 15% 10% 9.0%

 ^  <  >  %  {  |   `  }  [  ]  #  Q  Z    
    Y  P  O  U  ?   K  D  L  C  W  X  &  @
    I  N  E  A  :   M  H  T  S  R  =       
    ~  +  *  ;  !   B  F  G  V  J          

 \  1  2  3  4  5   6  7  8  9  0  q  z    
    y  p  o  u  -   k  d  l  c  w  x  /  $
    i  n  e  a  ,   m  h  t  s  r  "       
    '  (  )  .  _   b  f  g  v  j          

Fitness:       17382108
Distance:      13628085
Finger work:   46738
Inward rolls:  10.19%
Outward rolls: 2.33%
Same hand:     34.47%
Same finger:   1.55%
Row change:    12.78%
Home jump:     1.07%
Ring jump:     3.14%
To center:     2.77%
To outside:    0.41%

Time elapsed: 4 hours, 18 minutes, 55 seconds

***Found from greatToBest()***

Hands: 50% 49%
Fingers: 9.0% 9.0% 19% 14% 0.00% 0.00% 15% 15% 10% 9.0%

 ~  `  [  {  <  #   ^  >  }  ]  %  Q  Z    
    Y  P  O  U  ?   K  D  L  C  W  X  &  @
    I  N  E  A  :   M  H  T  S  R  =       
    |  +  *  ;  !   B  F  G  V  J          

 \  1  2  3  4  5   6  7  8  9  0  q  z    
    y  p  o  u  -   k  d  l  c  w  x  /  $
    i  n  e  a  ,   m  h  t  s  r  "       
    (  )  '  .  _   b  f  g  v  j          

Fitness:       17371868
Distance:      13615820
Finger work:   35178
Inward rolls:  10.08%
Outward rolls: 2.35%
Same hand:     34.45%
Same finger:   1.53%
Row change:    12.77%
Home jump:     1.08%
Ring jump:     3.16%
To center:     2.73%
To outside:    0.43%

Time elapsed: 5 hours, 0 minutes, 59 seconds
Number of rounds in greatToBest() is now 131072.
Number of rounds in greatToBest() is now 131072.
Chance to use previous layout is now 0.742129.
Number of swaps between rounds is now 19.
Time elapsed: 6 hours, 21 minutes, 2 seconds

***Found from greatToBest()***

Hands: 50% 49%
Fingers: 9.0% 9.0% 19% 14% 0.00% 0.00% 15% 15% 10% 9.0%

 `  |  [  {  <  #   ^  >  }  ]  %  Q  Z    
    Y  P  O  U  &   K  D  L  C  W  X  +  @
    I  N  E  A  :   M  H  T  S  R  =       
    ~  ?  *  ;  !   B  F  G  V  J          

 \  1  2  3  4  5   6  7  8  9  0  q  z    
    y  p  o  u  -   k  d  l  c  w  x  /  $
    i  n  e  a  ,   m  h  t  s  r  "       
    (  )  '  .  _   b  f  g  v  j          

Fitness:       17367953
Distance:      13620940
Finger work:   35178
Inward rolls:  10.09%
Outward rolls: 2.35%
Same hand:     34.45%
Same finger:   1.53%
Row change:    12.77%
Home jump:     1.07%
Ring jump:     3.16%
To center:     2.70%
To outside:    0.43%

Time elapsed: 7 hours, 33 minutes, 38 seconds
Time elapsed: 8 hours, 45 minutes, 54 seconds

```
In a third test.
```
***Found from greatToBest()***

Hands: 50% 49%
Fingers: 9.0% 9.0% 19% 14% 0.00% 0.00% 15% 15% 10% 9.0%

 ^  `  %  [  {  #   ~  }  ]  <  >  Q  Z    
    Y  P  O  U  \   K  D  L  C  W  X  +  @
    I  N  E  A  ;   M  H  T  S  R  *       
    |  ?  !  =  &   B  F  G  V  J          

 /  1  2  3  4  5   6  7  8  9  0  q  z    
    y  p  o  u  -   k  d  l  c  w  x  :  $
    i  n  e  a  ,   m  h  t  s  r  "       
    (  )  '  .  _   b  f  g  v  j          

Fitness:       17368843
Distance:      13622895
Finger work:   53458
Inward rolls:  10.09%
Outward rolls: 2.35%
Same hand:     34.45%
Same finger:   1.54%
Row change:    12.81%
Home jump:     1.06%
Ring jump:     3.21%
To center:     2.78%
To outside:    0.49%

Time elapsed: 6 hours, 48 minutes, 18 seconds
Chance to use previous layout is now 0.742129.
Number of swaps between rounds is now 19.
Time elapsed: 6 hours, 48 minutes, 19 seconds
Time elapsed: 9 hours, 56 minutes, 15 seconds
Number of rounds in greatToBest() is now 262144.
Time elapsed: 14 hours, 20 minutes, 7 seconds
Time elapsed: 20 hours, 7 minutes, 26 seconds
Number of rounds in greatToBest() is now 524288.


```
### AFU Keyboard Layout

I think I can use the Mac Version.

### French Keyboard Layout (AZERTY)
![AZERTY-ISO](/fra-james-bigramed/AZERTY-images/azerty-iso-keyboard.png)


### French Keyboard Layout (Bépo)

### Spanish Keyboard Layout

### QWERTY Keyboard Layout

### Me'phaa Keyboard Layout
