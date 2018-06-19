# Cool Code snippets


sed remove html TAGS
https://stackoverflow.com/questions/19878056/sed-remove-tags-from-html-file?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

## sed
 ``` Replace all of them, then undo the first one:

sed -e 's/ /\\ /g' -e 's/\\ / /1'
```
```
sed "s/$(echo -ne '\uFEFF')//2g"
s/ /\\ /2g
```
The 2 specifies that the second one should apply, and the g specifies that all the rest should apply too. (This probably only works on GNU sed. According to the Open Group Base Specification, "If both g and n are specified, the [results are unspecified](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/sed.html).")


```
echo 汉典“馑”字的基本解释馑馑 | perl -CS -pe 's/\N{U+9991}/Jin/g'
```
To concatenate and make markdown tables.

UnicodeCCount.pl -m proof-of-concept-text.txt | tail -n +2 >file2.txt

join -1 1 -2 1 -o 1.1,1.2,1.3,2.3 file1.txt file2.txt > file3.txt && sed -i 's/ /|/g' file3.txt && cat file3.txt

$ sed -i '1s/^/Codepoint|glyph| Start Count|Character Name/' file
$ sed -i '2s/^/:----:|:----:| :----:|:----:/' file




    cat numb

10   15
20   35
40   45
45   55
58   70

so to perform action

awk 'p{print $1-p}{p=$2}' numb

output

5
5
0
3




|## Awk



The `-F` option needs an argument:` -F,` for example.

The end of the awk script must be separated with a ` ` (space char) with the rest of the parameters.

If the field separator is `,` and you wish to keep it, and if the number of column is constant and lower than or equal to 11, give a try to this:

```
awk -F, '{print $1,$2,$3,$4,$5,$6,$8,$9,$10,$11,$7}' OFS=, "$file"
```
