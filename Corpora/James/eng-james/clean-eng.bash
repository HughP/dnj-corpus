cat eng-james-nonum-noheading.txt| tr '[:digit:]' '\n' > eng-james.txt

#sed -i  '/^\s*$/d' eng-james.txt
#sed -i 's/[ \t]*$//' eng-james.txt
#sed -i 's/[ \s]*$//' eng-james.txt
#sed -i  's/:\n/: /g' eng-james.txt
#sed -i 's/;\n/; /g'  eng-james.txt
#sed -i 's/,\n/, /g'  eng-james.txt

cat eng-james.txt | perl -CS -pe 's/\N{U+000D}/\n/g' > eng-james2.txt
rm eng-james.txt
mv eng-james2.txt eng-james.txt

cat eng-james.txt | perl -CS -pe 's/\N{U+FEFF}//g' > eng-james2.txt
rm eng-james.txt
mv eng-james2.txt eng-james.txt

cat eng-james.txt | perl -CS -pe 's/\N{U+2028}/\n/g' > eng-james2.txt
rm eng-james.txt
mv eng-james2.txt eng-james.txt

cat eng-james.txt | perl -CS -pe 's/\N{U+00A0}/\s/g' > eng-james2.txt
rm eng-james.txt
mv eng-james2.txt eng-james.txt
