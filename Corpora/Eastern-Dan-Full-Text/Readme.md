# Explaining the Corpora

`initial-starting-corpus.txt` is an Eastern Dan [dnj] corpus which is the starting corpus before many of the script's transformations take place.

`final-corpus.txt` is an Eastern Dan [dnj] corpus which is the corpus after the major script finishes.

`phonemic-corpus.txt` is an Eastern Dan [dnj] corpus (`final-corpus.txt`) which has been converted using a phonemic correspondence script. This is an approximation of a phonemic representation of `final-corpus.txt` and is no longer in the orthography.

`as-if-dnj-qwerty-corpus.txt` this corpus is a copy of `final-corpus.txt` at a specific point in time (see git commit). But the idea is that at some future time `final-corpus.txt` might change based on some change in the script, but for Hugh's (my) thesis, I am going to base my calculations for the keyboard efficiencies off of  the contents of `as-if-dnj-qwerty-corpus.txt`. It should be noted that at the time of coping `as-if-dnj-qwerty-corpus.txt` and `final-corpus.txt` are both the same and no changes have been made to `as-if-dnj-qwerty-corpus.txt`.

`final-corpus-if-typed-with-mande-keyboard-layout-as-qwerty.txt` This corpus is a corpus after a conversion has taken place. `as-if-dnj-qwerty-corpus.txt` was processed with `CC` in such a way as to convert the characters so that if the Mande keyboard layout was used to type the text in stead of the target text, a QWERTY equivalent was entered into the document. This document can now be used to compute efficiencies. Via KLA and when bigramed and sologramed via Typing.
