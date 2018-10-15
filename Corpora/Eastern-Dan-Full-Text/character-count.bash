
LANGUAGE="dnj"

mkdir $LANGUAGE-final-stats

cp final-corpus.txt dnj-final.txt
UnicodeCCount.pl -m -n $LANGUAGE-final.txt > $LANGUAGE-final-stats/$LANGUAGE-UCC-m-n.txt

chary ngram -n 1 -f $LANGUAGE-final.txt -points -names > $LANGUAGE-final-stats/$LANGUAGE-chary-count.txt

wc -m -l -w $LANGUAGE-final.txt > $LANGUAGE-final-stats/wc-m-l-w-$LANGUAGE-final.txt

rm dnj-final.txt
