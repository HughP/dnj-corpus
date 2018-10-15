
LANGUAGE="fra"

mkdir $LANGUAGE-james-stats

UnicodeCCount.pl -m -n $LANGUAGE-james.txt > $LANGUAGE-james-stats/$LANGUAGE-UCC-m-n.txt

chary ngram -n 1 -f $LANGUAGE-james.txt -points -names > $LANGUAGE-james-stats/$LANGUAGE-chary-count.txt

wc -m -l -w $LANGUAGE-james.txt > $LANGUAGE-james-stats/wc-m-l-w-$LANGUAGE-james.txt
