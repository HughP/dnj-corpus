# About the French Text

This French text is from the Darby 1885 text and is in the Public Domain. It was accessed via http://listen.bible.is/FRNDBY/Jas/1 on 4 October 2018.

The orginal text less the chapter headdings is in the file `fra-james-ori.txt`. Some random things (numbers, headdings, empty lines) are taken out by hand. The file `fra-james-less-numbers.txt` has some numbers in it, but it is ready to be processed with the included `.bash` script.

 The following operations are conducted on the text via the script.

Numbers argent removed:

`cat fra-james-less-numbers.txt | tr '[:digit:]' '\n' > fra-james.txt`

Empty lines are removed along with some extra spaces.

```
 sed -i  '/^\s*$/d' fra-james.txt
 sed -i 's/[ \t]*$//' fra-james.txt
sed -i 's/[ \s]*$//' fra-james.txt
 sed -i  's/:\n/: /g'   fra-james.txt
 sed -i 's/;\n/; /g'   fra-james.txt
 sed -i 's/,\n/, /g'   fra-james.txt
 ```

## Files

`fra-james-ori.txt`orginal text.
`fra-james-less-numbers.txt` modified version of `fra-james-ori.txt`, but it is ready to be processed with the included `.bash` script.
`clean-fra.bash` cleans the text file and generates a file which can be used by the `CC` program to to create a file for the bigram counts.
`fra-AWERTY-to-QWERTY-table.cct` is the table for changing French text as typed with AWERTY to QWERTY for processing in `Typing`
code to create the `CC` conversion: `silcc -u -t fra-AWERTY-to-QWERTY-table.cct fra-james.txt > fra-james-AWERTY-as-QWERTY.txt`

`fra-james-AWERTY-as-QWERTY.txt` The converted text ready to be bigramed.

`fra-bigram.bash` Creates the files for use in `Typing`

`fra-james-UnicodeCCount-n-m.txt` Is a file with the output of `UnicodeCCount` with flags `-n` and `-m` so that I have a count of the characters in the FRA text.


## Notes on the CC
There are four CC files:

1. As if it were typed with AWERTY.
2. As if it were typed with BÉPO.
3. As if it were typed with Trans-Mande.
4. As if it were typed with AFU keyboard for MacOS.
`É` is not on AWERTY. So it was fudged as `Eé`.
