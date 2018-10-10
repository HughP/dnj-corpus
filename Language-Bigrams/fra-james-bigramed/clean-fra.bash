cat fra-james-less-numbers.txt | tr '[:digit:]' '\n' > fra-james.txt

 sed -i  '/^\s*$/d' fra-james.txt
 sed -i 's/[ \t]*$//' fra-james.txt
sed -i 's/[ \s]*$//' fra-james.txt
 sed -i  's/:\n/: /g'   fra-james.txt
 sed -i 's/;\n/; /g'   fra-james.txt
 sed -i 's/,\n/, /g'   fra-james.txt
