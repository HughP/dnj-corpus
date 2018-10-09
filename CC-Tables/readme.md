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

## Data on keyboard solutions

As far as is known there are three keyboard solutions in possible use among Eastern Dan language users.

1. LIBTRALO keyboard https://keyman.com/keyboards/libtralo
2. FRA -AFU from LLACAN http://llacan.vjf.cnrs.fr/res_manuels_en.php
3. A trans-Mande keyboard in use by Valentin Vydrin.

The LIBTRALO keyboard is focused on Eastern Dan as it is spoken in Liberia, which has a slightly different orthography. As such it has not been investigated.

The French based AFU keyboard assumes an ISO based keyboard layout on windows only. It is distributed as a `.msi` file, for which the orginal author no-longer has the `.klc` file. The AFU has as its base layout the AZERTY layout. In general the AFU keyboard is a deadkey-base pattern input solution.

The FRA AFU Keyboard from CNRS installed on a Windows 10 laptop with a built in ANSI keyboard does not include a solution for the B99 key. This is the "extra" key (left of "z") for typing the "greater-than" />/ or "less-than" /</ keys on the AZERTY layout. That is, even if the laptop has a touch screen the "greater-than" />/ or "less-than" /</ key does not show in the visualization of the virtual keyboard. This is in contrast to the French AZERTY keyboard that is the default included keyboard for Windows 10. For the default French Keyboard, the visualization of the keyboard on the touch screen includes the B99 or "extra" key that is in the location of the "large" English QWERTY keyboard Shift key. Even if the physical keyboard on the laptop is an ANSI keyboard layout.

In this way the AFU keyboard layout is deficient, as it is distributed it can not serve multiple operating systems, and even within an operating system it is not flexible enough to respond to the various kinds of hardware which might be available to language users. the AFU keyboard does not support the punctuation modifier-letter characters which are required by the Eastern Dan orthography. For analysis these characters where computed in the positions in which they would be typed by their closes look alike character.

The Trans-Mande keyboard has a QWERTY base but is Windows only. It is not clear if it is designed for ISO or for ASNI keyboards, as an ISO on windows is not currently available for testing. The trans-Mande keyboard, has a base-deadkey input pattern, though some modifiers are in layers which require an additional state to be entered before they can be used (double modifier keys).

The trans-Mande Keyboard does not support the punctuation modifier-letter characters which are required by the Eastern Dan orthography. For analysis these characters where computed in the positions in which they would be typed by their closes look alike character.
