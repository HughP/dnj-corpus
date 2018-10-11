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
