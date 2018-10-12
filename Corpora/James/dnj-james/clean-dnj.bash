cat dnj-james-wbt-final.txt | tr '[:digit:]' '\n' > dnj-james.txt

UnicodeCCount.pl -n -m dnj-james-wbt-final.txt > dnj-james-wbt-UnicodeCCount-n-m.txt

 sed -i  '/^\s*$/d' dnj-james.txt
 sed -i 's/[ \t]*$//' dnj-james.txt
sed -i 's/[ \s]*$//' dnj-james.txt
 sed -i  's/:\n/: /g'   dnj-james.txt
 sed -i 's/;\n/; /g'   dnj-james.txt
 sed -i 's/,\n/, /g'   dnj-james.txt
