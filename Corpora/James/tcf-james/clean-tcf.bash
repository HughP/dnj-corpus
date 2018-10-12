cat tcf-james-less-numbers.txt | tr '[:digit:]' '\n' > tcf-james.txt

 sed -i  '/^\s*$/d' tcf-james.txt
 sed -i 's/[ \t]*$//' tcf-james.txt
sed -i 's/[ \s]*$//' tcf-james.txt
 sed -i  's/:\n/: /g'   tcf-james.txt
 sed -i 's/;\n/; /g'   tcf-james.txt
 sed -i 's/,\n/, /g'   tcf-james.txt
