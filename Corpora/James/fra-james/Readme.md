# About the French Text

## Source
This French text is from the Darby 1885 text and is in the Public Domain. It was accessed via http://listen.bible.is/FRNDBY/Jas/1 on 4 October 2018.

### Edits
The orginal text less the chapter headdings is in the file `fra-james-ori.txt`. Some random things (numbers, headdings, empty lines) are taken out by hand. The file `fra-james-less-numbers.txt` has some numbers in it, but it is ready to be processed with the included `.bash` script.

#### Transformations
 The following operations are conducted on the text via the `clean-fra.bash` script.

1. Numbers removed:

`cat fra-james-less-numbers.txt | tr '[:digit:]' '\n' > fra-james.txt`

2. Empty lines are removed along with some extra spaces.

```
sed -i  '/^\s*$/d' fra-james.txt
sed -i 's/[ \t]*$//' fra-james.txt
sed -i 's/[ \s]*$//' fra-james.txt
sed -i  's/:\n/: /g'   fra-james.txt
sed -i 's/;\n/; /g'   fra-james.txt
sed -i 's/,\n/, /g'   fra-james.txt
 ```

3. Get a reading of all the characters in the cleaned file (for instance, `fra-james.txt`) use: UnicodeCCount.pl -n -m fra-james.txt > fra-james-UnicodeCCount-n-m.txt

4. Transform the text from "being correct" to "encoded" so that it contains the characters which would be there if the end user was thinking they were typing with analysed keybord but the computer had recorded the input as if QWERTY was the active keyboard layout.

>example command line usage:
`silcc -u -t fra-AZERTY-to-QWERTY-table.cct fra-james.txt > fra-james-AZERTY-as-QWERTY.txt`

5. Generate the bigram files for use in `Typing`. (this is two files: `allDigraphs.txt` and `allChars.txt`) use the `fra-bigram.bash` script.
6. Put the output from step 5 in a folder for storage.
7. Run `Typing` against the out of step 5. by navigating to the `Typing` folder and opening the program on the command line. Within typing set two variables:  The first is `setksize` this is set to `standard`, the second is to use the `compare` command and get the score for the target keyboard layout on the full corpus. A single file was created with the QWERTY keyboard layout: `qwertyStore.txt` This filename is invoked in the `compare` command.
8. Take the output of step 4 and put analyze it in KLE. Record the QWERTY values and the PERSONALIZED values. Record the keyboard layout for the KLE PEERSONALIZED setting. Set that up in a file like `qwertyStore.txt` and compare it against the whole corpus.
9. Run `Typing` on the whole corpus. Record the output.
10. Reconvert the output optimizations to the correct characters for their languages.
11. Graph the outputs so that they are comparable.

## Files in this folder

* `fra-james-ori.txt`orginal text.
* `fra-james-less-numbers.txt` modified version of `fra-james-ori.txt`, but it is ready to be * processed with the included `.bash` script.
* `clean-fra.bash` cleans the text file and generates a file which can be used by the `CC` program to * to create a file for the bigram counts.
* `fra-AZERTY-to-QWERTY-table.cct` is the table for changing French text as typed with AWERTY to * QWERTY for processing in `Typing`
* code to create the `CC` conversion: `silcc -u -t fra-AZERTY-to-QWERTY-table.cct fra-james.txt > * fra-james-AZERTY-as-QWERTY.txt`
* `fra-james-AZERTY-as-QWERTY.txt` The converted text ready to be bigramed.
* `fra-bigram.bash` Creates the files for use in `Typing`
* `fra-james-UnicodeCCount-n-m.txt` Is a file with the output of `UnicodeCCount` with flags `-n` and `-m` so that I have a count of the characters in the FRA text.


## Notes on the CC
There are four CC files:

1. As if it were typed with AWERTY.
2. As if it were typed with BÉPO.
3. As if it were typed with Trans-Mande.
4. As if it were typed with AFU keyboard for MacOS.
`É` is not on AWERTY. So it was fudged as `Eé`.

Dan text should be run on Mande, and AFU
