#commands for creating Typing compliant data

silcc -u -t eng-james-qwerty.cct eng-james.txt > eng-james-as-QWERTY.txt

UnicodeCCount.pl -n -m eng-james-as-QWERTY.txt > eng-james-UnincodeCCount-n-m-QWERTY.txt

chary ngram -f eng-james-as-QWERTY.txt -n 2 > long-ngramed.txt

sed -e :a -e '$d;N;2,3ba' -e 'P;D' long-ngramed.txt >short-ngramed.txt

awk '{print $1 " " $2}' short-ngramed.txt > bigram.txt

sed -i 's/\\/ \\\\/g' bigram.txt
sed -i 's/␠/ /g' bigram.txt
sed -i 's/␉/\\t/g' bigram.txt
sed -i 's/␊/\\n/g' bigram.txt

rm short-ngramed.txt
rm long-ngramed.txt
mv bigram.txt allDigraphs.txt

chary ngram -f eng-james-as-QWERTY.txt -n 1 > long-sologramed.txt
sed -e :a -e '$d;N;2,3ba' -e 'P;D' long-sologramed.txt >short-sologramed.txt

awk '{print $1 " " $2}' short-sologramed.txt > sologramed.txt

sed -i 's/\\/ \\\\/g' sologramed.txt
sed -i 's/␠/ /g' sologramed.txt
sed -i 's/␉/\\t/g' sologramed.txt
sed -i 's/␊/\\n/g' sologramed.txt

rm short-sologramed.txt
rm long-sologramed.txt
mv sologramed.txt allChars.txt
mkdir eng-james-counts-for-Typing
mv allChars.txt eng-james-counts-for-Typing
mv allDigraphs.txt eng-james-counts-for-Typing

mkdir eng-james-KLE
mv eng-james-as-QWERTY.txt eng-james-KLE
mv eng-james-UnincodeCCount-n-m-QWERTY.txt eng-james-KLE
