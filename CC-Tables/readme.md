# CC Tables

## The program

CC is a program from SIL International called _Consistent Changes_. It is a simple search and replace program which operates character by character and also can work with multi-byte characters, or also strings.

silcc on the commandline is available from SIL International's ppa. Instructions for adding the ppa to your system can be found at http://packages.sil.org/.

## Usage

I use this program to take the final corpus and then convert it for analysis with Typing. I convert the characters in the corpus to what they would be if the same keystrokes would have been made on a QWERTY keyboard.

example commandline usage:
`silcc -u -t mande-table.cct final-corpus.txt > final-corpus-as-qwerty.txt`

## Folder Contents

I keep the various files needed by CC in this folder along with the only tutorial I have found for CC. This tutorial was taken from SIL's website at https://software.sil.org/cc/ and can be found embedded in the `.zip` download for windows version 7.5.

## Information on keyboard solutions

As far as is known there are possibly five keyboard solutions in possible use among Eastern Dan language users.

1. LIBTRALO keyboard https://keyman.com/keyboards/libtralo
2. FRA -AFU from LLACAN http://llacan.vjf.cnrs.fr/res_manuels_en.php
3. A trans-Mande keyboard in use by Valentin Vydrin.
4. SIL Pan-Africa
5. Pan Africa Positional (SIL)

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

If we take the hypothetical situation and say that the pairing of deadkeys and the character combinations available via these deadkeys is reasonable, then what would be a better arangment based on the Eastern Dan language for these keys? On a first run with `Typing` to suggest an optimized layout for Eastern Dan the following was suggested after 13 minutes of running on Linux (64 bit Ubuntu 16.04) on a Lenovo Thinkpad with an Intel® Core™ i7-3520M CPU @ 2.90GHz × 4 (cores) and 16GB of RAM.
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
### AFU Keyboard Layout

### French Keyboard Layout

### Spanish Keyboard Layout

### QWERTY Keyboard Layout

### Me'phaa Keyboard Layout
