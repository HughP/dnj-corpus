# Spelling and word divisions

I am not sure what to do with the words presented here. here is the problem. Most words in Eastern Dan are monosyllabic. These words either aren't or are with middle marking of tone. This is just with letter minus and not all letter modifier characters (equals are listed below). Letter minus are more problematic because they are possible at both the beginning and the end of words.To find these lists of words stop the script before these items are replaced.

to get the lines I used this code:

```
grep -P -- "\p{L}˗\p{L}" proof-of-concept-text.txt
```

to get the unique list of words I used this code:

```
grep -P -- "\p{L}˗\p{L}" proof-of-concept-text.txt | tr " " "\n" | uniq | grep -P "\p{L}˗\p{L}"
```

to get the list of words with their number of occurrences I used the following code:

```
grep -P -- "\p{L}˗\p{L}" proof-of-concept-text.txt | tr " " "\n" | sort | uniq -c | grep -P "\p{L}˗\p{L}"
```
to get them in frequency order instead of alphabetical then add another `sort` after `uniq -c`.

```
      4 ˗a˗bha
      1 ˗A˗bha˗pö
      2 ˗a˗dhɛ
      1 ˗A˗dhɛ
      1 ˗a˗gɛn˗mü
      1 ˗A˗kë
      1 ˗A˗kwaa
      1 (ANARIZ˗CI).
      1 ANARIZ˗CI
      4 ˗a˗nu
      1 aɔ˗nu
      1 ˗A˗pö
      1 ˗a˗yan
      1 ˗a˗Zlaan
      1 ʼbang˗bang
      1 batɛmë˗zë˗wɔn
      1 bha˗a
      1 bha˗a˗gɛn˗mü
      1 ꞊bhaa˗sü
      1 bha˗bha
      1 bha˗bha,
      3 bha˗bha.
      1 bha˗da
      2 bha˗dhɛ
      1 bha˗dho
      1 bha˗kaa˗ga,
      1 ʼbha˗mü
      2 ʼbha˗nu
      1 ʼbha˗nu˗bha,
      1 ʼbha˗nu˗wa˗ya
      1 ˗bha˗së
      1 bha˗ta.
      1 bha˗wa˗dhɛ
      1 bha˗wa˗gblü
      1 bha˗wo
      1 bha˗wɔn
      1 bha˗yö
      1 ʼbha˗yö˗gblü
      1 bha˗yö˗gun
      1 bha˗yö˗wo,
      1 ˗bha˗Zlaan
      1 bha˗zuö
      1 bhii˗du˗bhö,
      1 bho˗dhɛ
      1 bho˗gblü
      1 ˮBinma˗dhɛkpaɔ,
      1 bo˗da˗sü˗zë
      1 ˗buang˗yaaga
      1 ˗dedewo˗Zlaan
      2 dë˗nu
      1 dë˗nu!
      1 dë˗nu.
      1 dha˗dhe!»
      1 ꞊Dheglizë˗bha
      1 dhe˗kɔ
      1 ˗dhɛkpaɔyi˗ya.
      2 ˗dhɛ˗sü
      1 ˗dhɛ˗ya
      1 ˮdhi˗bha,
      1 ˮdhi˗dɔ
      1 ˮdhiʋ̈˗yö˗to˗a˗së˗ta.»
      1 ʼdho˗bha
      2 ʼdhö˗bha
      1 dho˗dhɛ
      4 ʼdhö˗dhɛ
      2 ʼdho˗gɔ
      1 ʼdho˗nu
      1 ˮdhü˗kë
      1 ˮdhü˗mü
      1 ʼDia˗bha
      1 ʼdɔɔnnu.˗Du˗wɔn
      1 do˗ta.˗Yö˗kë
      2 do˗yö
      1 ꞊draan˗ta
      1 ʼDunmaagɔn˗nu
      1 ˮflɔti˗mü.˗A
      1 ga˗nu
      1 ga˗nu˗ta.
      1 ga˗wɔn
      1 gba˗du
      1 ˗gban˗a
      1 ꞊gban˗gɔ
      1 ꞊gban˗kë˗bha.
      1 ꞊gban˗wëë
      1 ˮgbɩɩ˗Gɛn
      1 ˮgbɩɩ˗kɛɛ
      2 ꞊gblɛɛn˗dhɛ
      1 ꞊gblɛngblɛn˗nu
      1 ꞊gee˗da
      1 ꞊gee˗gɔ
      1 ꞊gee˗wɔ
      1 ˗gɛn˗mü
      1 gɛnngdhö.˗A˗gɛn˗mü
      1 ˗gɛn˗yan
      1 ˗gɛn˗zü
      1 ꞊gloo˗bha
      1 ʼgo˗du
      1 ˗gɔn˗yan
      1 gɔɔn˗zë
      2 ʼgü˗a
      1 ʼgü.˗A˗bha
      1 ʼgü˗kɔ
      1 ʼgü˗mɛ
      1 gun˗nu
      1 gun˗së˗dedewo
      1 gun˗ya˗sü
      2 ʼgü˗së
      1 ʼgü˗sü
      1 ʼgü˗waa
      2 ʼgü˗wɔn˗mü.
      1 ˮiin˗wëëwɔn
      2 ʼka˗a
      1 ʼka.˗A˗bha
      1 ˗Kaa˗ga,
      2 ˗ka˗dhɛ
      1 ʼka.˗Du˗wɔn
      1 ʼka˗ee?
      3 ʼka˗gblü
      1 ʼka˗glü
      1 ʼka˗kwɛ
      1 ʼka˗waa
      1 ʼka,ʼwo˗dhɛ
      1 ʼka˗ya˗dhɛ
      1 ˗ka˗yënngyënngsü.
      1 kë˗a
      1 ˗kë˗a˗gɔ
      1 kë˗da
      2 kë˗dhɛ
      1 kë˗dhɛng
      1 kë˗gbekɔ
      1 kë˗kun
      1 kë˗kwɛ
      1 kë˗nu
      1 kë˗tiaandhe,
      1 kë˗wo
      1 kë˗wɔn
      1 kë˗ya
      1 ˮkidhʋng˗kaɔng
      1 ˮkidhʋng˗kaɔn˗yiisiö
      1 ꞊klang˗kë
      1 ꞊klang˗nu
      1 ꞊Klang˗yiisiö
      1 ko˗bha,
      1 kö˗dhɛ
      1 kö˗dhɛta
      1 ko˗dho
      1 ˮkɔdivuaa˗mɛ
      1 kö˗nu
      1 ko˗ta.
      1 ʼko˗ta˗kun
      1 kö˗wa˗pö
      5 kö˗ya
      4 kö˗yö
      1 kö˗yö˗du
      1 ʼkpii˗a
      1 ʼkpii˗dede
      1 ʼkpii˗dedewo.
      1 ʼkun˗bɛng
      1 ʼkun˗du˗wɔn
      1 kun.˗Ka˗wëëwɔn˗ga;
      1 ˮkunmana˗nu,
      1 Kwaa˗dhɛng
      1 kwaa˗kpan˗bha
      4 Kwaa˗sɛ
      1 kwaa˗ˮsɛgɔ
      1 ʼkwa˗dhɛ
      1 Kwa˗dho
      2 kwa˗ma
      1 ˮkwanngdhö˗gɛn˗bho
      1 kwa˗pö
      1 ʼkwa˗ya
      1 ˮkwëë˗wëëwëësü.
      2 ˮkwi˗wo
      1 ,l˗a
      1 le˗mɛ
      1 ꞊loo˗gblü
      1 ꞊loo˗kpinngga
      1 Mali˗mɛ
      1 ʼ˗Mɛ
      1 ˗mɛ˗dhɛ
      1 ˗më˗kë
      1 ʼmɛtrë˗yaaga)
      2 ꞊mɔɔ˗bha
      2 ꞊mɔɔ˗bha,
      1 ꞊mɔɔ˗bha.
      1 mɔɔ˗bha
      4 moquerie˗nu
      1 mü˗wa!
      1 Nafadha˗naa˗gblü
      1 Nafara˗nu
      1 n˗bha.
      1 n˗dɔ.
      1 ꞊në˗da,
      5 ꞊në˗nu
      2 ʼnë˗nu
      1 ꞊në˗ta.
      1 n˗gɔ,
      1 n˗gɔ.
      2 ˗nu˗bha
      1 nu˗dhɛ
      1 ˗nu˗gɔ
      1 ˗nu˗naa
      1 ˗nu˗wa
      1 ˗nu˗wa˗pö:
      1 ʼ˗ö
      2 ʼ˗ö˗
      3 ʼö˗bha
      2 ʼö˗da
      1 ö˗de
      1 ʼö˗dee
      1 ʼö˗de˗takɔɔ
      2 ʼö˗dhɛ
      1 ʼö˗dhɔ
      1 ʼö˗du
      1 ʼö˗gban˗bha,
      1 ʼö˗gban˗du
      1 ʼö˗gban˗du˗wɔn˗bha
      1 ö˗gɛn
      2 ö˗gɔ
      1 ʼö˗gɔmɛ
      1 ʼö˗gɔmɛdë
      1 ʼö˗kaɔ
      4 ʼö˗kë
      2 ʼö˗kë,
      2 ö˗kɔ
      6 ʼö˗nu
      1 ʼö˗nu˗gɔ
      1 ʼö˗pö:
      1 ʼöpö˗nu
      1 ʼö˗ta
      1 ö˗ta
      1 ö˗ta˗bha˗mɛ
      1 ö˗tong˗ta
      2 ʼö˗we
      2 ʼö˗wo
      1 ö˗wo
      1 ʼö˗wɔ
      1 ʼö˗yaan
      2 ö˗ya˗kɔ
      1 ʼö˗ya˗sü
      1 ʼö˗zɔn
      1 pa˗sü
      1 pë˗bhö
      1 pë˗bhö˗dhɛ
      1 ˮpɛɛn˗ta
      1 pë˗yënngsü
      1 ˗pë˗yö
      1 piʋ̈ˮ˗da˗mɛ
      1 pö˗dhɛ
      2 pö˗dhɛ:
      1 ʼpö˗gblü
      1 ʼpɔn˗kɔ
      1 ʼpö˗nu
      1 ˗pö˗sü
      1 pö˗sü
      1 pö˗sü˗bha
      1 ˗pö˗zian
      1 ˮpuɛng˗yiisiö
      1 ˮpuu˗a
      1 ʼSangtaa˗pö
      1 ˮsaɔdo˗naa
      1 ʼsɛɛnnë˗nu
      1 sɛɛnnë˗nu
      1 ʼseng˗ʼyaa
      1 ˮSɛnufo˗nu
      1 sië˗gɔ
      1 ʼsiɛn˗oo
      1 ˮslë˗yö˗dhö˗ee?
      1 Sodho˗yö
      1 ꞊soo˗wɔn
      2 ˗sü˗bha
      1 sü˗bha.
      1 ˗sü˗dhɛkpaɔyi
      1 sü˗dhɛkpaɔyi
      1 ꞊taama˗sü
      1 ta˗tiantiandhe
      1 ta˗zü;
      1 ˮtʋʋdhö.˗A˗kë
      2 ꞊Tɛtɛyankan˗bɔ
      1 ꞊Tɛtɛyankan˗ya˗kë
      1 ˗tiaandhe˗kpɛɛ
      1 Tio˗ya
      1 Tio˗yö˗ziö˗gblɛɛn
      1 ˮtʋ̈ng˗yö
      1 to.˗A˗dhɛ
      1 ˗todhʋ̈˗sü˗bha
      1 ʼto˗ʼka
      1 ʼto˗kɔ
      1 ʼtɔngdë˗wɔn
      1 to˗wɔn
      1 ü˗dhɛ
      1 ü˗dhɛ,
      1 ü˗gɔ
      1 waa˗a
      1 Waa˗bhö
      1 waa˗dhëngga
      2 waa˗kwɛ
      1 waa˗ya
      1 waa˗Zɔwɛɛn
      1 ˗Wa˗dhɛ
      1 ꞊wa˗pö
      1 ˗wa˗pö
      1 ˮwɩ˗bha
      1 ʼwëë˗da
      1 ʼwëë˗dede
      1 ʼwëë˗kaɔng
      1 ʼwëë˗yɛɛbho
      1 ˮwʋ̈ng˗ziaan
      1 ʼwo˗bha
      1 wo˗bha
      1 wo˗de
      1 ʼwo˗dee
     11 ʼwo˗dhɛ
      2 ˗wo˗dho
      2 ʼwo˗gban
      1 ʼwo˗gla
      2 ˗wo˗gun
      1 ʼwo˗kan
      2 ʼwo˗kë
      1 ʼwo˗ma
      1 ˗wo˗ma,
      1 ˗wo˗mü:
      1 ˮ˗wɔn
      1 ʼwo˗naa
      1 ˗wɔn˗bha
      1 ˗wɔn˗bha,
      1 ʼWɔn˗nu
      2 ʼwo˗nu
      1 ʼwɔn˗wɔ
      2 woo˗nu
      1 woo˗zuö
      1 wo˗ta
      1 ʼwo˗Tiagbö
      1 ʼwo˗ya.
      1 wo˗zë˗nu
      1 ʼwü˗bha.
      1 yaa˗dhiang
      1 ʼyaa˗du
      2 yaan˗bha
      1 ʼyaa˗nu
      1 ʼya˗dedewo.
      1 ˗ya˗dhiang
      2 ꞊ya˗gblü
      1 ya˗nu
      1 ˮyan˗yö
      1 ʼyaɔ˗nu
      1 ʼya˗Pamɛbhamɛ
      1 ˗ya˗pö:
      1 Yaradiɔɔgë˗gɛn˗zü˗sü
      1 Yaradiɔɔgë˗yaa
      1 Yaradiɔɔgë˗ya˗ya
      1 Yaradiɔɔgë˗zü
      1 ˗ya˗sü
      1 ʼya˗.˗Wo˗mɔɔ
      1 ꞊ya˗zuö.
      1 ʼyënngˮgbɩɩ˗gbeng
      1 ʼYënng˗gɛn
      1 yën˗wo
      1 ꞊yën˗yaa
      1 yën˗yö
      1 ꞊yën˗yö˗mɔɔ
      1 ꞊Yesu˗dhɛ.
      1 ʼyii˗dhɛ
      1 ʼYii˗dhɛ
      1 Yi˗kë
      1 ˗yö˗dho
      3 ˗yö˗gun
      1 ˗yö˗gun˗dhɛkpaɔyi
      1 ʼyö˗kë
      1 ʼYö˗kë
      1 ʼyö˗kwɛɛzë˗nu
      1 ˗yö˗më˗kë˗a
      1 yö˗mü
      1 yö˗mü.
      1 ˗yö˗to
      1 ˗yö˗tɔ
      2 ʼYö˗wo
      1 ˗yö˗wɔ
      1 ˗yö˗ya
      1 ʼyö˗yaa
      1 ʼyö˗ya˗da,
      1 yö˗zë
      1 ʼyuöö˗yɛ
      1 ˗zë˗a
      1 ˗zë˗a˗dhɛ
      1 zë˗bha
      1 zë˗sü
      1 ˗zë˗ta,
      1 zë˗wo
      1 ˗ziaan˗ga˗gblü
      1 ziö.˗A˗bha˗du˗wɔn
      1 ziö˗bɛng
      1 ziö˗nu
      1 ziö˗sü
      1 ˗Zlaan˗gɔ
      1 ˗Zlaan˗wɔn˗bha.
      1 zü˗gɔ
      1 ˗zü˗Zlaan

```

Presented with their line numbers and context here:

```
298:ʼka ˗a ˗naa ʼwëë˗ ˗kɔ ʼö ʼwo˗dhɛ BCEAO bha, ʼyö ˗kë ˗a gɔ ˗mɛ ˗nu ʼgü ˗së kö ˮwëë˗
452:bha˗ ʼgü, ˗kwɛ ʼö ʼkwa go˗ ˗gü ya, ʼyö mɛ kɔ ˮgblʋʋ ˗gasü ʼö ˗kë gizamɛ ʼka bha, ʼwo˗ya. Mɛ ʼgbɛ ˗dede ˗wo kë ˗nu kö ˗wo
597:ʼWɔn ʼö ˗gban ˗kɔlookota ʼwo ya˗nu ˗bha
621:kö˗nu
835:ʼwo˗bha ˮGwɛɛtaa ˗wo ʼgü. ʼYö
968:꞊mɔɔ˗ ˗bha ʼwo ˗kë ʼpö, ʼwɔn ʼö gɔɔndho kë˗ ʼö dhebë ꞊de ʼpö dho ꞊mɔɔ˗bha, kö ʼwo wo ˗zo ʼgɔn ˗a
992:sü, ˗zuaazë ˗sü ʼö ꞊ya nu ˮyua yaa ʼö˗yaan ʼsü ˗dhɛ ʼyaa ˮgbɩɩ˗, ˗a ʼka ˮtʋ̈ng
1003: ˗dho kë˗tiaandhe, ʼö ˗
1135:꞊mɔɔ ˗zë wo˗ ˗bha ʼö ʼwo˗gla ꞊mangzii ˗nu ʼgü, ˗a
1156:ˮSu ʼö ʼkwa ˗dhɛ ʼzëzë, ʼö ˮkwi ʼdhö˗dhɛ Fevrie bha, ˗a ˗dhɛkpaɔyi 25 bha
1164: ˗potaasü ˗wɔn ˗bha ʼö ˗gban˗a ˗bha
1175:bha, ˗a ˗nu zua ˗sü ˗bha. ˮYua bha˗wɔn ʼgü ʼzü, ˗kɔlookota ˮgblʋ̈gblʋ̈
1183: ˗wo ʼmɛ ˗nu ʼö ʼwo dho yë bha˗ kë˗a ˗nu ˗kɔ ꞊wlöö kwa ˗gɔ ˮsɛ ya ʼgü˗a mɛ ˮgblü ˗kaɔng
1313:ˮZɛ waa˗ kwa dheebhang ˗nu ʼö ʼwo go ˮLʋgwaa ˮsɛ ʼgü, ʼ˗ö ʼwo ˗kë mɛ ˗nu ꞊klang˗ kë
1315: ˗yakwëë bha˗ ˗kë «dhʋ̈ ʋ̈ kö yë bha ʼwo˗ kë sië ˗kɔ ʼ˗ö˗ ˗bha, ʼö ʼdho sië ˮdhiʋ̈ ˗së ʼka
1317:ˮMaadhö Liblövidhö ꞊klang˗ ˗kɔ do (1) ˗yö mü. ˗Dɔyagwinng, ˗a do (1) ˗yö mü. ʼMɛ ʼö˗gɔmɛ ʼka yö ˗mü madamö ˮSadhiëë ʼka. Blungdhö ˮsia˗ ꞊yën, ꞊klang˗ ˗kɔ ˮsɔɔdhu (5) wo mü. ʼ˗Mɛ ʼö˗ ˗nu ˗dhɛ ˮdhiʋ̈, yö ˗mü ʼGo˗ Zulö ʼka. ˮSanggwinng, ˗a do (1) ˗yö mü.
1319:ʼ˗ö˗ ˗gɔmɛ ʼka. ˮLʋgwaadhö, ˗a ˗yiisiö (4) ˗wo mü. ˗A ʼgbɛ ʼbha ˗nu ˗wo ˗dhö
1528:ʼdhɛ ˗nu ʼö ʼwo ꞊klang˗kë Nivɛɛsite ˗dhɛ ʼdhɛ ʼö
1652:ʼKwa˗ pö ˮdhʋ̈ kö kwa˗pö ꞊dhɛ ˗a ˗dhɛ ˗ya ˗bha kö
1732: ˗dedewo. ˮYi ꞊gblü ˗nu ʼö˗dhɛ ʼdhö˗ ˗bha kö ʼkwa˗ ˗nu
1789:ˮbhɩbhɩ ˗nu ˗ga ˗dhɛ ʼgü, ˗yö ˗kë ʼwëë˗da ˗sü ʼka ˗kwaa ˮsɛ ʼgü. ˗A ˗gɛn ˗mü
1806:bha ˗a ˗naa ˗dhɛ ˗nu ˗ga ˗sü, pë ʼdhɔ sü, ˗yö ʼwëë˗ ˗nu kwaa˗ ˮsɛ ˗dhɛ. Kö˗ dhɛ ˗ya ˗bha kö kwaa˗ ˗dhɛ ˗nu ʼö dhɛng ˗nu ʼwo ꞊mɔɔ˗bha ʼö
2337:bha, dha ban ˗kɔ ʼbha ʼö˗kë, ʼkɔ do ʼbha bha ˗yö kë
2367:waa˗ ˗kwɛ këng ˮsuesiö waa˗kwɛ ˗kaɔng ˮsaɔdo ö ga do (
2381:kö gɔɔn˗zë ˗wa kë
2466:ʼwaa ˗Zlan ʼgü˗a ˗nu ʼdhö, ˗a ʼmɔɔʼsëëbho ˗mɛ ʼdhö, ˗a ꞊geebë
2511:(ANARIZ˗CI). ʼWɔn ʼö ˗gban
2516: ˗sü ˗bha, ꞊në ʼö ANARIZ˗CI bha yë ʼka. ˗A
2569:ˮdhɔɔ dɔ ʼsëëdhɛ ʼyaa˗ ˗nu ˗gɔ bha, ʼwo˗nu ˮdhɔɔ dɔ sië ˗kpinng ˮdhiʋ̈ ˗dhɛ nu, ʼkɔ ˮgʋ̈ngta ˗dhɛ ˗nu ʼgü. ꞊Dhɔtrɔɔ nu ʼö ʼwo ˗kë ꞊bɛdhɛ ˮdhɔɔ ˗dɔ ʼgü ˗kɔ
2613:Biö bha ʼyö ʼwo ʼpë bha˗zuö ˮkwi ˗a ˮsu ( Avlilö ) ʼö ziö ya˗ ʼgü, ˗a ˗dhɛkpaɔyi kaɔngdo ö ga ˮsiʋ̈siö ˗naa
2677:yö˗ ʼka baa ya ˗a yën ˗sü ʼö gun ˮtʋʋ bha˗ ꞊bha bha˗bha, kö yö ꞊në ʼö ˮgbɩɩ˗.
2681:ˮyanyi ˗yö ꞊wɛnng sië. Kö˗ ʼYö˗ pö ꞊Kɛyang ꞊në ʼö ˮgbɩɩˮyan ꞊ya ˗wo ʼgü ˗ziisü ʼka. Mɛ ꞊gban ˗wo kë˗kun
2695:ʼka ʼsëëdhɛ ˗be ʼnë ʼö ˗kë ʼwaa ʼwɔn yaa ˮyʋʋ bho ʼwɔn yaa ʼka ˗a ʼgü bha˗bha. ʼWɔn ˗zɔn ʼka ˗së ˗dede ꞊në ʼö bha. ˗A ʼsëëdhɛ ˗be ʼnë bha ˗a ˮdhɔɔ
2698:Ü këyɔɔ ˗ya ʼwɔn yaa kë ü ʼka, ʼbha ʼdho˗gɔ ˮyɔɔ dɔ˗ ˗gɔ ʼwɔn yaa ʼka. Ü ˗bha ˗yö kë
2809: ˗dede ꞊në ʼö ʼwo mü ʼö˗nu zuëˮ ʼdhö ꞊gi ˗sü ʼka. ˗A ˗nu
2821: ˗sü ʼka ʼwɔn bha˗ ˗ta. ꞊Ya dhi ʼmɛ ʼö˗dhɛ ˗yö ˗mɔɔ ˗a ˗bha ʼö dho ˗Zuan
3057:ʼwo yöö ꞊de ʼpö ˗a sü˗bha.
3059: ˗a ˗bha dhiang ˮpɛpɛ ʼö˗nu zë, ˗a ˗gɔ ˗dɔ ˗dhɛ
3176: ˗dedewo. ˮKɛɛ kwa˗ma
3227:꞊ya yö ʼpë ʼö ʼpu sië bha˗bha. Mɛ ꞊gban ˗wo bhɛaˮ
3268:ˮdhi ta. ˮKɛɛ ʼö dɔ ʼmü kö a ˗kun ˗bha ˗dhɛ ʼyaabha ʼzü, kö pë ˗yö ʼma sië˗gɔ ʼka ꞊dhɛ mɛ ˗yö ˗më
3295:ʼka ʼsëëdhɛ ˗be ʼnë ʼö ˗kë ʼwaa ʼwɔn yaa ˮyʋʋ bho ʼwɔn yaa ʼka ˗a ʼgü bha˗bha. ʼWɔn ˗zɔn ʼka ˗së ˗dede ꞊në ʼö bha. ˗A ʼsëëdhɛ ˗be ʼnë bha ˗a ˮdhɔɔ
3298:Ü këyɔɔ ˗ya ʼwɔn yaa kë ü ʼka, ʼbha ʼdho˗gɔ ˮyɔɔ dɔ˗ ˗gɔ ʼwɔn yaa ʼka. Ü ˗bha ˗yö kë
3620: ˗kpla ʼdhö˗ ˗bha, ʼö ʼyii këˮdhiʋ̈ ˮwɛɛ ʼbha wlüüˮ bha, ʼwaa ꞊mɔɔ˗bha
3685:kë ꞊gwëë ꞊kö, ˮtan bho mɛ ʼkpii˗ ʼö ʼwo˗dhɛ
3699:꞊sua ꞊në˗ ʼka ʼyö ʼwo kë˗ya ˗a ˗bha. Gɔɔn˗ ʼgbɛ
3802: ˗da ˗a ʼgü ʼkpii˗dedewo. Kö
3840:gblaa˗ ˮbudhangdhe ʼö˗nu ˗gɔɔ ʼö ʼwo nu kwaaˮsɛ ʼö ya ˗a ʼgü ˗gblü ˗wɔn
3907:ʼkpii˗ ˗yö ˗dho kë˗ ˮgbɩɩ˗kɛɛ ! »
3944:ʼwɔn ʼbha ʼkosɔn, ʼö dho kë ˗kɔ ʼö˗bha kö ˗yö ʼgo ü zuëˮ ˮpiʋ̈, ˗a
4028:ʼsëëdhɛ bha˗ ˗ta. Yi˗kë
4232:ʼma ˗dhɛ ꞊kpaɔ kwa˗ma ꞊dhɛ ˗dhɛ ,ö ꞊ni
4233: ˗wa mɛ zë˗bha
4255:ˮwɛɛ ʼbha ˗nu ʼö˗nu ˗mawɔn ˗nu ʼö
4269:ˮdhʋ̈ ʼö ˮKwi ʼdhö˗dhɛ sa sufi » bha.
4456: ˗waa pö ˗ya ʼsü ˗kpɛawo, kö˗dhɛ ˗ya ˗bha ꞊dhɛ ˗ya ˗nu wo ˗ya ꞊bhlëë ʼgü. ʼYa ʼdho wlö
4647:ʼwɔn ʼbha ʼkosɔn, ʼö dho kë ˗kɔ ʼö˗bha kö ˗yö ʼgo ü zuëˮ ˮpiʋ̈, ˗a
5364: ˗bha: ʼyö˗yaa pö ʼZan˗,
5665:Voici le˗mɛ
5680:ˮgbɩɩ˗Gɛn yöˮkaa
5695:wo ꞊dhɛ ʼyënngˮgbɩɩ˗gbeng
5706:aɔ˗nu ʼö˗kaɔ
5821:ʼdhɛ bha˗bha ˗wa:
5849:ˮsɛ ʼka ʼö ʼwo˗dhɛ
5856:bha ʼö ˮslë mɔɔ˗bha
5863:꞊dhɔtrɔɔ ˗nu ʼwo˗kë gɔɔn˗ ʼka. ˗A
6000:ʼdho ʼkupë bha˗ bha ˮiin ʼö dho ʼdho˗bha kö ˗yö dɔ.
6005:ˮKudivua ʼka waa˗a ʼdhɛ ʼö ʼwo˗ ˗dhɛ
6006:Madagasikaa ʼwo˗ma ʼkwëë˗ ˗Buakɛɛ
6023:ˮgban ga do ʼö to˗wɔn ʼka; ʼyö˗ pö ö
6135:(dhiang do ya, ʼya˗Pamɛbhamɛ ʼö ˗kë
6197:ʼgü ꞊tuaabho kë˗dhɛ ʼgü; ꞊dhɛ ʼö ʼgo
6413:ʼwëë˗yɛɛbho ˗mɛ ˗nu ˗gɔ ˗mɛ ꞊gban ˗gɔ
6441: ˗dhɛ do dɔ; woo ʼnë glɔɔnʼ ˗nu ʼsü kö ˗wo ʼdho˗nu ʼka wo ˗gɔ ˮsɛ bha˗ ʼgü kö ˗wa ˗nu draanʼwɔn ˗së ʼgbɛ ˗yë ʼka. Woo ꞊badhong ˗zuö ˗dhɛ
6530:ʼö˗gɔmɛdë
6549: ˗wo ʼgü plakaa. ʼYö˗ ˮdhi ta˗zü; ʼyö ˗ziö ʼö dho ˮkwɛɛ
6571:bha, ˗a zuëˮ ꞊gbaan ʼwü˗bha. ˗Aga, ʼyö˗ pö: «
6712:ˮsɔɔdhu. ˮTʋ̈ ng ʼö ʼwo˗kë ziaan˗ ʼyö ˗kë: ʼYënng˗gɛn ˗yan dan ˗yaaga
6739:ʼö ˗kë ˮKɔdivua ˗mɛ ˗nu bha ʼka, ˮkɛɛ ˗piöga ꞊soo˗wɔn ˮgblʋʋ ˮpiʋ̈ ˗a ʼka. Biang bha ˗a ˗blɛɛsü ˗yö
6952:(30) ˗a suu ʼyii ban ˮdhʋ̈ do. Mɛ ˮsaaga ꞊në˗nu zë (8). Mɛ ˮgblü ˗kaɔng do ö ga ˗yiisiö
6980:ʼka, ʼwo ʼsëëdhɛ ꞊draan˗ta bha,
6987:kë ꞊klang˗nu bha
7013:ˮyɔn doseng ꞊në˗nu ˗a ˗dhɛ. ˗A ˗kë
7046:ʼbii˗ ꞊plɛ ꞊në ʼö ʼwo kë˗da ʼpö; ꞊ya kë ˮdhʋ̈ kö
7056: ˗nu ˗bha ʼka, ʼö ʼwo˗gban kuranng
7089:Pë ˮbin ʼö ya ˗a ˗ga ˗së ʼka .˗A do ˗zë ʼka ˗dhɛ˗ya ˗bha saaga. ˗A ˗nu mɔɔ˗
7156:ˮDannëng ˗dhɛ yaan˗bha ˗dhɛ ˗bha ˗mü
7262: ˗tɔ ˗dho ʼkɔɔdhö ˮtʋ̈ng bhaʼgü, ʼyö ˮsɛ ʼdhö ꞊zii ˗a ʼpö˗nu ʼwo˗nu ˗dhɛ Pisko,
7270:waa˗dhëngga ꞊gblɛn
7286: ˗Kwɛ ˮgblü do waa˗kwɛ
7325:wo mü ʼö woo˗nu kë. ˗A ˗nu ꞊gban
7348: ˗nu wo mü ʼö woo˗nu kë. ˗A ˗nu ꞊gban
7419:ʼBiya yö bha ꞊në˗ta. ꞊Dhɛ ʼö ˗kë ꞊dhɛ
7423: ˗ta bha, ʼyö ʼwo˗dee ʼgü niaˮ bho.
7447:ʼKupë bha ˗wo kë˗dhɛ
7462:kë ʼbii˗ ꞊plɛ ꞊në˗da, ʼyö Buukina
7487:ʼö˗ pö ꞊geebë bha˗dhɛ mɛ ꞊gban ˮyan
7695:waa˗Zɔwɛɛn ˗dhɛ ꞊zinng ʼgü.
7840:꞊gblɛngblɛn ʼka, ʼwaa ˮwɩ˗bha kö ʼwo˗ bho.
7988:ʼwo˗ wo˗bha kö
8019:ʼwo˗dhɛ ˗Gɛnmɛ
8088:woo˗zuö bha, ˗wa
8125:,l˗a
8177: ˗kë ˮdhima mi ʼka ʼwo˗dhɛ Ulërisië ʼö yö ꞊në
8192:ʼdho yë ˮdhiʋ̈, ʼyö˗ pö˗dhɛ: « Zɔnnggo, ʼilë ʼfo
8237:ʼgü ʼyö Zɔnnggo ʼdhö˗ pö˗dhɛ: « ꞊Patrɔnng, tuaˮ di
8238:plepaadhe ꞊puu lö ʼsiɛn˗oo ! »˗A ˗bha ʼgü ˗waa pö
8353:ʼgü ʼSuisü, ʼwo˗dhɛ
8357:go Rusi ʼwo˗dhɛ
8562: ˗dho ˮdhʋ̈ kö ʼö˗zɔn nu ˗dhɛ ꞊dhɛ ö ˗zo ʼyii
8564:Kö ʼö ˗nu ꞊tuaabho kö ʼöpö˗nu ˗dhɛ ꞊dhɛ
8597: ˗Gbagbo ʼyaɔ˗nu ʼgü. ꞊Dhɛ ʼö go ʼbha,
8705:ö ˗kɔ ˗yiisiö waa˗ ˮpuɛng˗yiisiö ʼka (444). ʼMɛ ʼö
8786:kwaa˗ˮsɛgɔ ˮdhiʋ̈ ˗mɛ
8793: ˗ya ˗da ˮsɛgɔ ʼdhɛ ʼö˗ta ˗a ˗nu kpö ʼgü kö
8815:꞊plɛ ˗naa ˗yö ˗dho kë˗kwɛ ˗dee ʼö nu˗ yaʼgü. ˗Yö ˗dho kë˗ ˮkwi pö ˗kaɔng ˮsɔɔdhu ö ga
8828:kpɛnngdhö dhebë ꞊në˗nu ˗bha. ˮKɛɛ ˗a zü yö ˗bho ˗kwɛ ˗kaɔng do
8918:ʼbang˗bang
8935:ˮ˗wɔn ʼgü, ʼwo˗ pö˗ ˗dhɛ
8943:ʼdhö˗dhɛ
8971:ʼkun, ˗a ˗kɔ ʼyaa ꞊mɔɔ˗bha.
9107:꞊Ya kë ˮdhʋ̈ kö ʼpë ʼö˗nu ˗wɔn ʼdhö ʼdhö kö
9111:ʼka, ʼmɛ ʼö˗ ˗dhɛ ʼdhö˗bha kö ˗wo ʼsëëdhɛ
9113: ˗mɛ ˗nu ˗de ˗slɔɔ ꞊në˗nu ʼka. ʼMɛ ˗nu ʼö ʼwo
9341: ˗u ˗bha ʼö bha, ʼwëë˗kaɔng ˮsaɔdo ꞊në ʼmɛ
9460:ʼwëë˗dede
9490:kö ʼmɛ ʼö ˗kɔ ꞊ya ꞊mɔɔ˗bha, ü ˗mɔɔ ˗bha ʼü ü
9683:bha boo ˗glɛɛn bha˗dhɛ :«Boo ˗glɛɛ, kö
9836:Kwaa˗sɛ
9845:moquerie˗nu ˗bha
10088:꞊Dozinng ˗ziaan ʼö˗dhɔ ʼyaa mɛ ʼgbɛ kë
10121:꞊Dhooko ˗nu, ʼyuöö˗yɛ ˗sü ˗nu, ˮnɔnɔ
10139:ʼsanngsü ꞊në nu. Waa˗bhö ꞊dhɛ köng (kpɛɛ), kaa, sö, ʼö ʼwo ʼsanngsü
10295:bha ʼyö ʼwo˗ pö˗dhɛ ˗a ˗nu ˗gɔ mü
10384:ʼgü ʼö ʼwo ʼsëëdhɛ bha˗wo pö. ˮKɛɛ ʼmɛ ˗nu ʼö
10675:bha ˗yö ˗gun ʼya˗dedewo. Mɛ ˮsaɔplɛ
10676:꞊në ʼö ˮbhang bha ʼö˗nu zë. Gbiöödhe do,
10754:ˮwɛɛ ˗dhɛ. ʼMɛ ʼö˗ nu˗dhɛ bha, ˗wa ˗dhɛ
10838: ˗A ˗kë ˮdhʋ̈ ˗sü bha˗ ʼgü, ʼwɔn ʼö˗ ˗dhɛ ʼdhö˗bha kö ˗wa kë, yö ˗mü ꞊dhɛ ˗waa pö woo ʼdho
10914:dho mɛ ˗dhɛ˗sü ʼka ˮdhiʋ̈. ʼZan˗, ꞊misiee. ʼYö dho˗ ʼka ˮdhʋ̈, ˮdhʋ̈, ˮdhʋ̈. ꞊Dhɛ ʼö ö bo, ʼyö ʼKɔdivua ʼnë
10983:ˮpɛpɛ ˗gɔ ˮdhiʋ̈,  ʼö ʼwo˗dhɛ ˗Dhuaa ˮZɔɔmi.
11233:꞊në˗nu
11305: ˗A ʼPetëësibuu yaan˗bha ˗dede bha ʼyö
11355:ˮkwi ˗nu bha ˗wo kë˗dhɛng ˗bun ö bun ˗kɔ ta ˗dedewo... ˗Dhɛ
11392:zuudhalö ʼkpii˗ ʼö ʼwo˗dhɛ mü Metro, ˗a
11552:Vydrine ˗ya gun yaa˗dhiang zë ꞊Kesɩ ˗dhɛ
11634:ʼFɛtö, ʼfɛtö, ʼfɛtö: N dhe ˗nu, n ˗dë ˗nu, n dheebhang ˮpɛpɛ ʼö ʼka ˗kë danwo pö ˗mɛ ˗nu ʼka, Pamɛamɛ ˗ya ˗pö kwa ˗dhɛ ꞊dhɛ kwaa˗ ʼfɛtö ˮiin troo ʼkpii˗ ˗yö ˗dhö ˮsu ʼö ˗kë ˗yrü, ʼö mɛ ʼbha ˗nu ʼwo˗dhɛ ʼzü ˗buu ˗saa ˮkɛɛ ʼö ˮkwi ˗zë ʼö˗ ˗dhɛ desanngblë bha, ˗a ˗bha ˗dhɛkpaɔyi ˗kaɔng ꞊plɛ ö ga ˮsaɔdo
11636:ʼsëëdhɛ ʼgbɛ ˗dede ʼö woo zun ˮkpɛnng ˗a ˗nu ˗wɔn ˗bha. ꞊Ya kë ˮdhʋ̈, kö ˗ka ka baa˗ ˗dedewo. Kwaa˗dhɛng ˗nu ʼgbɛ ˗wo ˗dho ʼgo˗ ˮsɛ ˮwɛɛ ʼgbɛ ˗nu ʼ gü ʼö ʼwo nu.
11926:ʼKwa ʼdho ˗gleng suu bha˗da ʼnë ˗nu ˗bha.
11979:gun˗nu
12124:ʼkpii˗dede
12147: ˗Gbekɔ ˮsu ʼö ya, ʼö sü˗dhɛkpaɔyi ˗kaɔdo ö ga
12177: ˗kpa ˗mɛ˗dhɛ ˗yö ˗tɔ do ˗kpa. ʼÖ ꞊ya ma. ʼYö ʼwɔn ꞊slɔɔ˗ ʼgü
12291:Kwaa˗sɛ
12300:moquerie˗nu ˗bha
12530:ʼdhö˗dhɛ ˗bha, Gana ˗mɛ ˗nu ˗kɔ
12549:ʼyö˗ mɛ ꞊plɛ ˗naa ʼwo˗dhɛ ʼZɔɔzië ʼBusië. ˗Yö
12558:ˮdhiʋ̈ zangvie ʼö ʼkwa˗dhɛ ˗buu ˗faa ʼö ˗ziö ya
12834: ˗gɔ. ˗Dhɛ ʼö ʼü ꞊gloo˗bha
12988:Kwaa˗sɛ
12997:moquerie˗nu ˗bha
13230:ʼkpii˗a
13278: ˗dho ˗a ˮsaa˗ kë˗gbekɔ (zue) ga ˗yi
13522:dɔ kwa ˗dewo pö ˗dhɛ waa˗ya ˗nu ʼka, kwaa˗ ʼsëëdhɛ
13644:꞊Mamadu Tanng ʼDia˗bha ʼka ˮsɛ ˗gɔ ˮdhiʋ̈
13690:Kwaa˗sɛ
13699:moquerie˗nu ˗bha
14405:ˮsaɔdo (66). ꞊Klang˗yiisiö
14714:ʼMɛ ʼö ʼseng˗ʼyaa ˗a ˗gɔ, ˗yö ˗mɔɔ ˗a ˗bha ʼö˗ ˗kë ꞊wee ˗bi doseng ʼka.
14802:* Pë ˗bhö ˗sü ˗faan ʼyaa kë ˗a˗nu ˗gɔ.
14912:ʼPë ʼö ya ˗kaa kë kö ʼka˗ nu ˗a ˗dhɛ: ˗ka ˮyi ˗sanngdhe (˗zuɛɛbhɛ) ˮiin ʼzü ʼdhiitrë do kë ˮwɔsü. ꞊Ya ꞊dhiëë kö ʼka ˮsang ˮgblʋ̈gblʋ̈ bha, ˗a˗yan ꞊plɛ dan ˮsukadhu ˗bi ˮiin ˮzɔyɔn, ˮiin ʼzü ˮsukadhu kpö ˮsɔɔdo ˮiin ʼzü ʼbhawo ˮsang ʼsɛɛnnë bha, ˗a ˗yan ˮsɔɔdo dan ˮsukadhu ʼka. ʼKa ʼgo mü kö ʼka ˮsang sɛɛnnë bha, ˗a ˗yan do ʼö˗ ˗ta ʼö ˮkan ˗sü ʼka ꞊wee bi ˮpiëën ˗piëën ʼka ˗a ʼdhö, ʼseng˗ ˮyi ˮSang ʼnë ʼsɛɛnnë ˗yan do ʼdhö ( ˮni kö ˮyua ˗mɛ bha ʼyaa ˗pe sië). Pë ˮpɛpɛ bha ˗kaa ˗nu kaan˗ ˮkwëë. ꞊Ya kë ʼnë sɛɛnnë ˮiin ˗deenë ʼka, kaa nu˗ ˗dhɛ ˮsang ʼka. ˗Kaa nu˗ ˗dhɛ ˗dedewo ꞊sɔbhɛɛ ʼka. ꞊Ya kë ꞊dhɛ ʼnë bha ˗a ˮgblü ʼdhö ziö sië, kë ˮdhʋ̈ ʼö ʼka ˮyi nu ˗a ˗dhɛ ʼö˗ mü. ˗Kaa˗ ˗bha ˮyi kë ˮbhaa ˮyi ˮö ʼwo˗ kun ˮbhaa ˗ta ˗a ʼka.
14914: ˗Kaa nu ˗a ˗dhɛ ʼyënng˗ ˗kɔ dan ˮsɔɔdhu ˮsɔɔdhu ʼka (minitë ˮsɔɔdhu ˮsɔɔdhu ʼka), ˗yö ʼto˗ʼka ˮdhʋ̈ ˗yö ˗ya ö weɩˮ bho ˗sü ˗bha ˗së ʼka.
14994:3. Dhebë ʼnë do ʼbha ʼö ö bha ʼnë dha ʼö˗wo ˮsiʋ̈ gɔn ˗ziisü ˗gɔ ˗Mɔɔsii ˮsɛ ʼgü
15216:Fadhaɔn dhe ʼö gun ˗a ˗gu ʼka, ˗a ˮsu ˮsaɔdo˗naa bha, ʼyö ˗a dë ˗wɔn ʼdhö ꞊see.
15252:ʼYö Fadhaɔn ˗yö dhɛaˮ ˗to ꞊taama ˗sü kpɔ ö bha dhebë ˗gɔ ʼö˗ pö: « Ma ʼwɔn ˗nu ʼö˗ ˗nu ˗dhɔ ʼyaa ü kë bha, ˗a ˗yiisiö ˗naa ˗mü ˗më ʼka ? » ʼYö˗ ˗bha dhebë ʼdhö˗ ˗yɔɔ bɔ ʼö˗pö: « ʼÜ pë ˗bhö sië, ˮbhaa ˮplɩɩga ˗nu ˗wa ˗pö ˮsiaa˗, ʼyö ʼbha˗ ˗nu ˗wlö ʼbha˗ ˗nu ˗bhö ꞊dhɛ ˗tenë ˗yö ʼwɔn ˗kë, bhii ˗gblüdë ü ˗gɔ. Saanˮ ˗mɛ ˗mü ꞊nü wo ü ʼka ˗ee ? ʼYö ˗më ʼö ˗kë ʼü ü ˗dekë yaa ʼka ˮdhʋ̈ ? ˗Më ˗pë ˮdʋ̈nggʋ̈ ˗dʋ̈nggʋ̈dhɛ suu ʼö ˮdhʋ̈ ? ꞊Ya kë ˮdhʋ̈ ʼsa kö din˗ yöö n zë ü ˗gɔ ʼkɔɔdhö ˗dhe ! ꞊Ya ʼto yö ˗zë ˗a ˗bha kö ʼmaa ma ʼto ü ˗gɔ. »
15396: ˗Aga, ˗dhɛkpaɔyi do ʼka, ʼyö˗ ꞊da ʼdhö ˗gapë bha˗ ˮdhi ˗pu ˗dhɛ kö ˗ya ˗ga. ˗A ˗gɛn˗mü ꞊dhɛ kö mɛ ꞊plɛ ʼö ʼwo bha ꞊në ꞊wa ʼto ˮkwanngdhö. ˗Dekëyaa ˗yö ˗gun ʼpë bha ꞊në˗ ˗ga sië kö ˗a ꞊da ˗yö ꞊gbauu (pë ˗kpa ʼgü ˗kɔ) ʼgü, ʼyö ꞊zloo gɔn ʼkpikikpiki ˗ziisi ʼö˗wo ʼpë bha˗ ʼgü. ˮSia˗ ˮsia˗ bha, ˗Dekëyaa bha ꞊ya ö ˗de yö ˮbü ʼgü. ꞊Ya ziö ˗kɔnngkɔnngdhö ꞊ya ʼdho ö bha buu bha ʼsü˗ kö ʼö˗ ʼgü dan, ˮiin kö ʼö˗dee ʼgü yaanˮ bho.
15408: ˗Kaaga, ˗dhɛkpaɔyi do ʼka, kö dhebë do ʼbha bha ꞊ya ö bha wun ˗lö ꞊gblɛn ꞊gblɛn ʼka ˗së ʼka, ʼyö dho ˗Zlaan ˗dhɔkëgükɔ bha˗ ʼgü. ˗Dhɛkpaɔyi bha, ˗yö ˗gun ˗Zlaan ˗dhɔkë ˗dhɛkpaɔyi ʼkpii˗ ˗dede ʼka. Dhebë bha ʼyö ʼpë bha dɔ, ʼwaannu ʼö dho˗ wo bha, ʼyö˗ ˗bha wun ga do ʼdhö ˗pö ˗a ˗de ˗a buzi bha˗ ˗ta, ˮkɛɛ kö ʼyaa˗ ʼwɔn dɔ. Wun bha ʼyö ˗ya ˮgʋ̈ ˗sü ˗bha. ˗A ꞊fii ʼö ˗ya ˗a ˗gɔ bha, ʼyö ˗kë ʼgü ˗së ˗dedewo. ʼYö ˗kë ʼgü ꞊dhɛ ˗Zlaan ꞊në ꞊ya lɔɔ, ꞊ya nu dɔ ö ˮsɔɔ bha. ˗A ˮdhia ˗ma ʼgü˗kɔ yaa ʼgü yaa bha˗ ˗wɔn ʼgü, ʼyö ˗ya bhɛaˮ ˗sü ˗bha ö faan ꞊gban ʼka.
15488:ʼYö˗ zü bho ʼö˗ pö: ʼPiɛɛ˗, ꞊misiee. ʼPɔlë, ꞊misiee. Bɛɛtinö, ꞊misiee. ʼBɛnë oitö, ˗suaa. Mɛ ʼbhaa ˮwɩ. ʼYö dho mɛ ˗dhɛ˗sü ʼka ˮdhiʋ̈. ʼZan˗, ꞊misiee. ʼYö dho˗ ʼka ˮdhʋ̈, ˮdhʋ̈, ˮdhʋ̈. ꞊Dhɛ ʼö ö bo, ʼyö ʼKɔdivua ʼnë bha ʼö ö ˗kɔ ˮdhiʋ̈ ꞊wlüü, ʼö˗ pö: «꞊Misiee, ʼmii n ʼtɔ ma ˗wa!» ʼyö ˗gɔmɛdë ʼdhö˗ pö ˗dhɛ ˗wo ü ˗dhɛ ꞊dhɛ ? ʼyö˗ pö: ˗wo n ˗dhɛ Benoa. ʼYö˗ pö, kö ʼma˗ pö ʼnu. Bhi ꞊në ʼwo ü ˗dhɛ Bɛnë Oitö bha.
15510: ˗Kwɛɛnë do bha ˗wa ˗dhɛ ʼDunmaagɔn. ʼDunmaagɔn bha, ʼyii ˗wo ʼBiya do. ˗Ziaanwo, ʼyii ˗wo ˮkwi ꞊plöö ˗dhɛ ˮwɛɛ ʼbha ʼgü do. ˗Aga ʼyö˗ gbö ʼdhö nu˗ ʼsü˗ kö ʼwo ʼdho ʼBiya, kö ˗ya ˗dhɛ dɔ. ʼDho bha ꞊në ʼö ʼwo gun wo sië, ʼyö ʼwo dho ʼwo ꞊loo˗kpinngga ˮgbɛɛ ʼö ʼwo to˗ ˗ta ʼwo ˗wo ʼBiya bha˗ ˗ta. ʼKpinngga bha gɔ ˗nu ʼö ʼwo ʼgo sië mɛ ʼdho ˗zian ʼka, ˗a ˗nu ˗bha ˗yö ˗deta. ʼYö ʼmɛ ˗nu ʼwo ʼgo sië ˗a ˗nu ʼdho ʼzian ʼka ʼpö, ˗a ˗nu ˗bha ʼdhö ˗deta.˗A ˗wɔn ʼgü, gɔ ʼyaa ˗gban ʼkwëë˗. Gɔ ˗nu ʼwo ʼgo sië ˮpɛɛn do ʼka, ˗wo ˗to ˗kɔ ˮpɛɛn do bha˗ ˗ta. ˗Wo ˗mɔɔ ˗bha ʼwo go wo ʼko ˗nu ꞊taama ˗biang ˮgbɩɩ˗ ˗dede ʼka ʼwo ˗ziö ʼka wo ʼko ˗ta.
15512:Gɔ ʼö ʼDunmaagɔn˗nu ʼwo gun˗ ʼgü bha, ˗yö ˗gun gɔ ˮgblʋ̈gblʋ̈ ʼö mɛ ˗kaɔng ˮsaɔplɛ ˗nu sü, ʼwo˗ ˗dhɛ ˮkwi ˗wo ʼgü ʼkaa˗ bha˗ do ʼka.
15514:ʼDunmaagɔn ˗zë ˗yö ˗gun ˗ya˗sü ʼka gɔ fönɛtrë ˗bha.
15516: ˗Kpinngga bha ꞊në ʼDunmaagɔn ˗naa gɔ ʼdhö ꞊loo˗ ˗ta. ˗Dhɛta ꞊ya dɔ dinngdhö gɔ ʼgü. ʼDunmaagɔn dho ˮkan ö ˗ta kö gɔ ʼnë sɛɛnnë (ʼdɛdɛ) do ʼbha ꞊ya nu ꞊ya ziö˗nu ˗ta ˮwɛ ˮviʋʋ˗ dhö ö ˮtruu ˮwɩ ˗sü ʼka panpaan, panpaan, panpaan. ʼA, kö ʼDunmaagɔn ꞊ya ˮgbla ˗yaa pö: «ʼAaa, ˗ka ˗dhɛ ˗ga ˗wa! ˗Ka ʼklɔɔwɔn ʼkpii˗ ˗ga! Gɔ ʼnë sɛɛnnë (ʼdɛdɛ) ya, ˗kaa ˗ga ʼö ˗ziö ö ꞊dhoo ˗ta ya! ʼMa zetɔngdhe. ʼPë ʼkö ʼyii kë ꞊kö ʼkpii˗ ʼö˗ ˗gɛn ʼdhö ˮgbɩɩ˗ ya, ꞊ya kë ꞊diö ꞊dhɛ ʼö ꞊dhoo ya˗ ʼdhö, ˗yö ˗dho kë ʼwɔn ˮgbɩɩ˗ ʼka ʼsa ˗wa!»
15526:꞊Klang˗ bha˗ ta, pë ˗bhö ˮdhɛdhɛ ꞊ya ˗wo, mɛ ꞊gban ˗wo ˗dho pë˗bhö˗dhɛ ʼgü, pë˗bhö ʼgü ˗kɔ ʼgü. ˗Aga, ˗dhɛkpaɔyi do ʼka, ʼyö ꞊tabɛdhi (ʼtaablë) ʼö Sebasiɛn ʼö gun˗ ˗bha bha, ˮKwi ˗nu ʼbha waa˗ Mɛtii ˗nu ʼwo gun ˗ya ˗sü ʼka˗ ˗bha. Pëbhee ʼö gun yi bha˗ ʼka, ˗tɔ ˗yɛsü waa˗ pë ˮwɛɛ ʼbha ˗nu ˗mü.
15532:꞊Ya kë ʼpö ˮKwi ˗nu wɔkɔ ʼgü, ꞊wa pë ˗bhö, ʼyö ʼwo pë ʼnë ʼbha ʼö dho ʼpë ʼö ʼwo˗ ˗bhö bha˗ lɔɔ˗, ˗a ˗ziöta. ʼPë ʼö woo˗ ziö Pëbhee bha˗ ˗ta bha, ʼyö gun ˮdhɛga ʼka. ˮKwi ˗nu˗wa ˗dhɛ saladö. Saladö bha ʼyö ʼwo nu˗ ʼka ʼwo ˗ya ˗a ˗bhö ˗sü ˗bha. Sebasiɛn ˗zë ˗a ˗dhɔ ʼyaa˗ kë, ˗a ˗wɔn ʼgü, ʼyaa gun˗ ˗bhö sië.
15552: ˗A ˗wɔn ʼgü, ˗dhɛkpaɔyi do ʼka, ꞊dhɛ ʼö˗ ˗gɔmɛdë (꞊patrɔnng), ʼö ˗ziö ʼö dho yë ˮdhiʋ̈, ˗a ˗dhɛ ʼyii ꞊gwëë ʼyö nu ö bha dhebë ʼka ʼkɔɔdhö ʼyö ʼwo dho ˮkwi gɔn bha, ˗a ˗gɔ ʼdhii˗ ˗ta ꞊zɔɔ kö ʼwo wo ˗de ˮdhia bho ʼdhii˗ ˮplëë ˗plëë ˗ta mü˗wa!
15612:ʼYö mɛ ꞊gban ʼwo ˗ya pö ˗sü ˗bha: «Ü ꞊patrɔnng ya, ˗a kë ˗pë˗yö ʼya˗ ꞊dhɛɛ!»
15618:Mɛtii ˗nu kwaa˗ wɔkɔ ʼgbɛdhɛ ˗nu ˗wo mü ʼö ʼbha kë ʼwɔn ˮgbɩɩ˗ ˮiin˗wëëwɔn ʼbha ʼgü, ʼö wɔkɔ ˗nu bha saanˮ ꞊në ʼwo ma ü ˗bha do ʼü dho ʼka.˗A suu ʼbha˗mü ˮSɛnufo˗nu wɔkɔ ʼö kwaa˗kpan˗bha kwa ˮdhiʋ̈ ya˗ ʼka. ˮSɛnufo ˗nu ʼö ʼwo˗ ˗nu Tiegbadha waa˗ Nafadha ˗nu ˗kë bha, ˗a ˗naa mɛ ꞊gee bho ˗kɔ ˗yö doseng. ꞊Gee do ʼbha ˗ya ˗nu˗gɔ mü ʼö Tiegbara ˗nu ʼwo˗ ˗dhɛ Yaradiɔɔgë, ʼyö Nafara˗nu ʼwo˗ ˗dhɛ nɔɔgɔnkpelgë; ꞊gee bha ꞊në mɛ ꞊gee˗da ˮsɛɛdhö. ꞊Ya ö bo, ʼyö ʼmɛ ʼö˗ ˗bha mɛ bun bho bha,˗yaa gba˗du do ʼka.˗Du˗wɔn ʼkö bha, yö˗zë ˮflɔti˗mü.˗A mɔɔˮ mi këng do ʼyaa ʼdhö.
15620:꞊Dhɛ ʼö˗kë ʼpö ꞊dhɛ ga ꞊de ʼpö ʼmɛ ˗nu ʼö ˮflɛɛ ʼdhö˗ ˗nu˗bha ꞊dhɛ ꞊Lazaa ʼö ˗Zlaan ˗wo ʼsëëdhɛ ˗ya˗dhiang zë ʼdhö bha, ˗a˗nu ꞊gban˗wëë ʼyaa˗ kë bha, ˗aga, ˗dhɛkpaɔyi do ʼka ʼyö ʼnë glɔɔnʼ do ʼwo˗ ˗dhɛ Sodho ʼö pë ʼbha yaa˗ ˗gɔ bha, ˗a˗bha dhebë dhe˗kɔ kun.˗Ka˗wëëwɔn˗ga; pë ʼbha yaa˗ ˗gɔ. Yöö ʼgo˗du ʼka ˮmɛ kö˗ya nu ꞊gee bha˗ ˗dhɛ ? Ga ʼyaa yi ʼkpɔ ꞊tɔn ꞊dhɛɛ, n dë˗nu ! Sodho ʼtɔngdë˗wɔn ˮgbɩɩ˗ ˗sü do˗yö ʼpödhɛ bha˗ ʼgü ʼwo˗ ˗dhɛ Tio. ʼYö Sodho˗yö dho˗ ˮpiʋ̈ kö˗yö ö˗ta ʼkun˗du˗wɔn ˮgblʋʋ ˮpiʋ̈; ˮkɛɛ kö Tio ʼyaa yö ˮgwɛɛ ˮkɛɛ ˗ta ʼyaa˗ ʼwü (ˮflɛɛmɛ ˗mü ʼpö). ʼYö Tio˗ya pö˗ ˗dhɛ: «Sodho!˗A ˮsiʋ̈ ꞊ya ziö. Yaradiɔɔgë˗yaa ˮsiʋ̈˗dede ziö.˗A˗bha˗du˗wɔn ˮdhiʋ̈ ꞊ya ziö. Wɔkɔ suu ʼdhɛ ʼö ya,˗kwa ˮslë mɔɔ˗ ˗bha kö˗yö yën. Ü ˮtʋ ʼto n˗bha. Ü mang Tio ˗mɛ n˗dɔ. ꞊Ya kë ʼwɔn sɛɛnnë˗nu ʼka, ko ko ʼko˗ta˗kun ʼgü. ʼWɔn ʼdhɛ ʼö˗gban˗du ˗wɔn˗bha bha, mɛ kpɛnngdhö ʼö maa ʼdho˗ ˮpiʋ̈ kö˗yö ˮwɩ˗ ˗bha kö˗yö˗du ˮpɔ, ˮiin ʼwëë˗ ga ʼpɔ dɔ ko˗bha, n ˮyan ʼyaa˗ ˮdhiʋ̈. ʼPë ʼa dho pö ü˗dhɛ, yö˗mü ꞊dhɛ ʼwɔn ʼdhɛ ʼö˗kë ʼwɔn ʼsɛɛnnë˗nu ʼka ga˗wɔn bha˗ ʼgü, ˗a wo˗zë˗nu ˮyan bhɔ.˗Du ʼyaa n˗gɔ, ˮkɛɛ ʼwɔn ʼdhɛ ʼö˗gban˗bha, ˗a ʼto n˗gɔ. Kwa˗dho ˮslë ˮwɛɛ ʼbha mɔɔ˗. ˮKɛɛ, ˮkɛɛ, ü ˗de ʼkun Sodho.˗Bin ʼgü˗wɔn˗mü. Mɛ ꞊plɛ ko ꞊zinng ˮgü˗wɔn˗mü. ˮWënng ʼya ʼdho˗ ʼwɔn ma˗ tongtongdhö, ʼyii kë ˮdhʋ̈, ˗wo˗dho ʼwɔn˗wɔ ko˗ta. Ü bha dhebë dhe ꞊gee bha ˗kaa ʼsü kö ʼka ʼdho˗ ʼka bun ꞊taa.» ꞊Dhɛ ʼö˗ pö ˮdhʋ̈, ʼyö ʼwo˗kan wo ʼkwëë˗.
15622: ˗Kwaa ʼwɔn dɔ ʼka ꞊dhɛ Tiegbadha waa˗ Nafadha˗naa˗gblü ʼpɔn˗kɔ ˗yö doseng.˗Blɛɛsü ʼgü, ˗glüga ʼkpii˗ ꞊gblɛɛn do ʼö˗ ˗bha ꞊gblɛɛn˗dhɛ ʼö dho ˮsɛɛdhö ʼö waa˗ ˗gɛn˗yan ʼbuang˗ ˗buang˗yaaga (˗waa pö ˮdhʋ̈ kö˗wa˗pö ʼmɛtrë˗yaaga) ʼö ʼwo dho ꞊mɔɔ˗, ˗a pɔn.˗Gblü dheeˮ ꞊në bha. ꞊Ya ʼgo mü, ʼyö˗ ˗gblü bha˗a zü˗gɔ ˗dhɛ ʼö bha, ˗a˗bha mɛ ꞊kwaa ˮpiʋ̈˗ziö bha˗wa˗gblü ʼnë ʼpɔn.˗Gblü ʼnë bha, ˗a˗bha ꞊gblɛɛn˗dhɛ ʼö nu ˮdhuʋ̈˗, yën˗yö ʼmɛtrë do.˗A ʼdhɛ ʼö dho ˮkpʋng ʼgü mi ꞊yën˗yö˗mɔɔ ʼmɛtrë ꞊plɛ ˗bha.˗A ˗bha ˮdhi ˮgbɛɛdhɛ ˗yö ʼmɛtrë do.˗Glü ʼnë bha, ʼyö ʼwo mɛ ꞊gee˗wɔ ʼgü. ꞊Ya kë ˮdhʋ̈, ʼyö ꞊wa nu mɛ ꞊gee bha˗ ʼka˗glü bha ˮdhi˗bha, ʼyö Yaradiɔɔgë ꞊ya dɔ ˗glü dheeˮ bha˗ ʼgü ꞊ya ö˗kɔ ʼkpɔ mɛ ꞊gee˗gɔ ˗ya ʼma˗ ʼka˗gblü ʼnë bha˗ ʼgü. ꞊Ya ö bo ʼyö ꞊ya˗gblü ʼnë bha˗ ˮdhiʋ̈ ta˗tiantiandhe ʼka. ꞊Ya ö bo ˮpɛɛpɛdhö, ʼyö˗ya˗da, ʼyö ʼmɛ ʼwo to ꞊wa ˮsɛ ʼwo˗ pɔn bha˗ ꞊loo˗gblü dheeˮ ʼgü˗waa ta kpɛnngkpɛnngdhö. ꞊Wa ʼdho ˮkwanngdhö, ʼmɛ ʼö˗bha mɛ ʼdhö ga bha, ˗yö˗to ˮsia bha ʼö˗du bha nu.
15624: ˗Aga, ʼyö Sodho ꞊da bha˗dho ʼka˗gblü ˮdhiʋ̈ ˮtʋ̈ng˗yö ꞊loo.
15626:Mali˗mɛ ˗nu˗naa plezidanng zii do ʼbha ʼwo˗ ˗dhɛ Umaa Konadhe ʼyii˗ pö ꞊dhɛ ʼWɔn ʼö˗ ˮslë ʼyaa ʼdhö, kö˗ ˮslë˗yö˗dhö˗ee? ˗Aga ʼyö Tio˗yö˗ziö˗gblɛɛn ʼkpɔ ʼgü ʼö dho ʼö˗wɔ ˗gblü ʼnë bha˗ ʼgü, ʼyö ʼö ˮyan to.˗A˗dhɛ ʼyii ꞊gwëë ʼyö Yaradiɔɔgë waa˗ ö˗ta˗bha˗mɛ ˗nu ʼwo nu mɛ ꞊gee bha˗ ʼka, ʼyö ꞊lɔɔ ˗gblü dheeˮ ʼgü, ʼyö ʼdɔɔnnu.˗Du˗wɔn yaa ʼgü yaa gun ʼö wo˗ ˗gɔ ʼgü bha, ʼyii˗dhɛ ˗ziaan˗ga˗gblü ʼnë ʼgü. ꞊Dhɛ ʼkö bo lɔɔ ˗sü ʼka˗gblü dheeˮ ʼgü bhoo, ˗a pö ꞊në ʼö˗ wo: «˗Ka n gba mɛ ꞊gee bha˗ ʼka.» ˗A˗bha˗pö ˮdhʋ̈˗sü ꞊në ˮgbɩɩ˗ kö Tio ꞊ya bɔ ˗gblü ʼnë ʼgü ꞊ya ö˗wo ˮgla, ˗yaa pö: «˗Wa ü gba ʼka, kö ʼü n gba˗ ʼka.» ˮKɛɛ ˗dhɛ ʼö˗kë ꞊dhɛ mɛ ˗nu dhiang zë˗wo ꞊ya gun ꞊ya kë ʼgbɛ bha, Yaradiɔɔgë ʼyii ö ˮtʋ̈ng ˮbhɩɩ˗ kë˗wo ʼö˗we bha˗ ʼgü.˗Ma ʼnë sɛɛnnë ʼbha ꞊në kö bho˗ ˮtʋ ˗bha. ʼYö˗kë ʼgü˗së kö ʼö˗ ʼgü ma ʼkpakpadhö. ʼYö˗ pö ˮgbɩɩ˗ ʼka: «˗Ka n gba mɛ ꞊gee bha˗ ʼka yö.» ʼYö˗wo do bha ʼö˗ pö˗ ˗dhɛ: «˗Wa ü gba ʼka, kö ʼü n gba ʼka yö.» ˗Aa ˗wo ʼdhɛ ʼö˗we bha˗yö˗gun ˮpuu˗a ˮtʋʋdhö.˗A˗kë ˮdhʋ̈˗sü bha˗ ʼgü, ˮsuʋ̈ yaa ʼö˗da ʼgü bha kö˗ya ˮgbla, ˗yaa pö: «˗Ka dɔ ˗dhe n dë˗nu! ʼwɔn ʼbha˗yö˗gblü ya˗ ʼgü.˗Ka ka ˮtʋ ʼto.» ʼYö˗ ʼmɛ ˗nu ʼwo gun ˮgbʋ bɔ sië oo, ˗a ʼmɛ ˗nu ʼwo gun ꞊gbang dɔ sië oo, ˗a ˗nu ꞊gban ʼwo dɔ dinngdhö. ʼYö Yaradiɔɔgë ʼö˗ pö ʼbha wo: «˗Ka n gba mɛ ꞊gee bha ʼka yö.» ʼYö˗wo do bha ʼö bɔ ʼmü ʼö˗ pö: «˗Wa ü gba ʼka, kö ʼü n gba ʼka yö.» ˗Gbuuu, kö mɛ ꞊gbaan ziö˗bɛng ʼka, ˗wa ˮkan Yaradiɔɔgë˗zü ʼkwëë˗. ꞊Dhɛ ʼkö˗ ˗dhɛ yö ˮdhʋ̈ bhoo, ʼyö˗ pö yöö ˮkpʋng ʼkun˗bɛng ʼka. ꞊Sua ʼö˗kë, kö Tio ꞊ya bɔ ʼmü ꞊yën˗yaa ʼsü˗ ˗gɛn do ʼka ꞊dhɛ ʼsëë˗ ˗yö˗tɔ ʼnë sü ꞊dhɛ mɛ ˗yö˗më˗kë˗a pö˗sü ʼka: «꞊Dɛɛ ˗zë ʼbhaa bhii˗du˗bhö, ˗a˗gɛn˗mü ꞊dhɛ ko˗dho ʼdho ꞊geebɔɔ.»
15628: ˗Yö de ꞊në˗ ˮpiʋ̈ ꞊dhɛ ʼö ga? ʼA˗ ! kö Yaradiɔɔgë˗ya˗ya ʼö˗de˗takɔɔ ˗sü˗bha ö˗gɛn ʼgü zë˗sü ʼka. ʼWɔndɔmɛ ˗nu˗wa˗pö: Troo ˮdhiʋ̈˗yö˗to˗a˗së˗ta.» ˗A˗kë ˮdhʋ̈˗sü bha˗ ʼgü, ʼyö˗kë Tio ʼgü˗së kö ʼö ö kwaa˗ ˗gɛn˗zü kö mɛ ˗nu ʼwa ʼdho nu˗ ʼwo ʼwɔn ꞊slɔɔ ʼgü ꞊dhɛ yö ꞊në bhɔ bha.
15630: ˗A˗kwaa Yaradiɔɔgë˗gɛn˗zü˗sü ꞊në ˮgbɩɩ˗ kö Yaradiɔɔgë ꞊ya˗gblü ʼkun ꞊dhɛ mɛ ˗më˗kë ꞊ya ziaan ʼkun ö gɔɔ.˗A ziö˗sü ꞊në ˮgbɩɩ˗ kö Tio ꞊ya ʼgo ʼpö˗gblü ʼnë ʼgü ꞊ya ziaan ˮwɛɛ ʼsü ꞊ya ʼdho ˮkwanngdhö.
15632: ˗A˗dhɛ ˗yö˗wɔ ˗së ʼka, ʼyö˗kwɛɛzë˗nu waa˗ ʼnë glɔɔnʼ ˮgbʋ̈gblʋ̈ ʼbha˗nu ʼwo nu ʼwo Sodho ꞊da ꞊gee bha sü ˮsia˗ ʼwo˗ bun bho˗gblü bha˗ ʼgü.
15634:ʼÖ sü ʼwɔn bha˗ ˗bha ʼö nu yö ʼka ꞊dɛɛ ˗bha, Yaradiɔɔgë ʼyaa ˮwɩ˗ ˗bha ʼköö mɛ ꞊gee bho. ʼWɔn ʼdhɛ ʼö˗gban˗du˗wɔn˗bha bha, ꞊ya yën. ʼMɛ ʼö˗ ˗bha mɛ ꞊ya ga ʼyaa˗du nu ʼzü. ꞊Gee bha˗yö˗wo, ˮkɛɛ ʼwo ʼdho sië mɛ ꞊gee ʼka bun ꞊taa, ˗wa ꞊yɔɔn˗ ˗dhɛ ˮsɔɔ, ʼyö yö ˗zë ꞊ya ʼdɔɔnnu ʼbhadhö, ꞊ya ö˗gɔ ˗wɔ ˮgbɛɛ ʼka˗ya˗dhɛ ˗ga bun bho˗dhɛ ʼgü.
15640:16 ʼGbɛn˗ ʼyaa bo ö˗ya˗kɔ ʼka
15642:Gɔndënë do ʼbha bha˗wa˗dhɛ ꞊Tɛtɛyankan [꞊tɛ ꞊tɛ ꞊yan ʼkan]. ˮZʋʋmi ˮgbɩɩ˗ ʼö mɛ ꞊gban ʼdhö˗ dɔ ˗a ˗bha ˮgbɩɩdhɛ ˗bha ˗Gbogboplöö [˗Gbo ˗gbo ꞊plöö] yö˗mü. ˮZʋʋmi ˮgbɩɩ˗ ˮwɛɛ ʼbha ʼyii ꞊slɔɔ ˗a ˮdhiʋ̈ ˮiin ˗a ˮwɛɛ ʼbha ʼyii ʼdho ꞊slɔɔ ˗a ˗ziaan ʼgü ˗a ˗bha ˮgbɩɩdhɛ ʼkosɔn. ˗A ˗bha ˮzʋʋdhɛ ˗gee ʼö dümɛ ˗nu kun˗ ʼka, ˗wo˗gun ˗a˗dhɛ sië ˗zuzugwɛ [˗Zu ˗zu ˗gwɛ] ꞊Gee bha˗ ˗bha ˮgbʋʋdhɛ ˗dhiang ʼyaa gun zë sië. Dümɛ ˗nu ꞊gban ˗wo ˗gun ˮsuʋ̈ sië˗ ˗gɔ ˗a ˗nu˗bha ˮsɛ ˗kɔ ˮpɛɛn ʼdhɛ ʼkö bha˗ ˗ka˗yënngyënngsü. ʼBhü kë ˗dhɔ ˗zë ʼö ꞊Tɛtɛyankan ˗bha, kö˗yö bo˗da˗sü˗zë ʼka ö˗gɔ ˮzʋʋdhɛ ˗kɔ ˗zë ʼgü bhoo, kö ˮgbʋ ꞊ya ˮwɩ ˮkwanngdhɛ ʼbha ʼgü ( kö ga ꞊ya bhɔ ʼmü).
15644:꞊Tɛtɛyankan ʼtɔ ˗yö˗gun bhɔ ˗sü ʼka˗kwɛ ʼgbɛ ˗dede ʼka˗a ˗züzüdhɛ ꞊gban ʼgü.˗A˗bha ˮpɛɛn ʼdhɛ ʼkö bha˗ ˗ta, ʼö dho˗ ʼka ˮdhʋ̈ zian ˮwɛɛ ˗ziaan ʼka. ʼMɛ ʼkö yöö dɔ˗ ˗gɔ ˗gɔn˗yan ʼgü, ʼyaa gun tongtongdhö.
15646:ˮKɛɛ kwa dë˗nu ˗wa˗pö ꞊dhɛ ˮdhiëng ʼyaa ʼto˗kɔ do˗ta.˗Yö˗kë mü ꞊dhɛ ʼyii kë ʼmü ꞊dhɛ ˗ee ? ʼMɛ bha˗kaa˗ga, ꞊ya ˮwɩ ˗Zlaan˗wɔn˗bha. ꞊Ya ö˗de nu ꞊Yesu˗dhɛ. ꞊Tɛtɛyankan ꞊ya ö kwaa˗ ˗zuzugwɛ ˗zü˗Zlaan waa˗ mɛ ˮbhɩɩ˗˗nu ꞊gban wëëʼ dhö. ʼYaa˗ ʼgü pë ʼbha ʼka ʼzü. ˮBinma˗dhɛkpaɔ, ˗a˗bha ʼwɔn ꞊gban˗gɔ ˗yö˗ya
15648: ˗Zlaan ˗wɔn ꞊në˗ ˮgblʋʋ ˮpiʋ̈. ꞊Yesu ʼö go Nazadhɛtö ꞊në ꞊taama˗sü ʼgü, wɛng˗ ˗nu ꞊në ˗a ˗nu ˗gɛn ʼdhö piöö˗ sië ˮkwëë˗wëëwëësü. ʼWɔn˗nu ʼwo˗gban ꞊Yesu ˗wɔn˗bha, ꞊ya ˗ya ˗a ˗nu draan˗ ˗sü ˗bha˗së ʼka ꞊ni. ʼÖ ꞊yɔɔn mü kö ꞊ya kë ˗dedewo˗Zlaan ʼgü mi ˮgbɩɩ˗ ˗dede ʼka mɛ ꞊gban wëëdhö. ˗A ˗bha˗Zlaan ˗wɔn ʼyaa gun ˗pö sië ˮyi ꞊bhaa tongtongdhö.
15650:ˮKɛɛ ˗Kaa˗ga, ꞊Tɛtɛyankan˗bɔ ˮyi ꞊bhaa (batize) ˮtʋ̈ng ꞊ya ˗wo ˗waa ˗dhɛkpaɔyi˗ya. ˗Dhɛkpaɔyi bha, ˗yö˗gun˗dhɛkpaɔyi ʼkpii˗ ʼö suu ʼyii ꞊slɔɔ ʼnu do, ˮiin ʼö ʼyii ʼdho ꞊slɔɔ˗ batɛmë˗zë˗wɔn ˮgblʋʋ ˮpiʋ̈, ꞊në˗ ʼka.˗A ˮkwi ˮgblʋ̈gblʋ̈˗nu ʼwo ˗kë˗a˗gɔ ˮpɛɛn˗ta ˗mɛ ˗nu ʼka,ʼwo˗dhɛ ꞊gblɛngblɛn˗nu ʼgü oo, ˗a ˮkunmana˗nu, ꞊dhuutii ˮpɛpɛ ʼwo˗naa ˮpɛɛn ˗zë˗ta, ˗a˗Zlaan ʼgü˗mɛ suu ꞊gban ˮpɛpɛ ʼwo ꞊dheglizë suu ꞊gban ʼgü ʼö˗da ʼka mɛ ʼwɛɛ ʼbha˗nu˗bha, ˗a˗nu ꞊gban ˗wo kë˗nu ʼwɔn bha˗ta. ꞊Dheglizë˗bha pa˗sü ˗zë˗a suu ʼbha ʼyii kë ˮdhʋ̈ do.
15652:ʼYö de nü ʼyaa ˮpiʋ̈ ö ˮyan˗yö dɔ ˮzʋʋmi ˮgbɩɩ˗ ʼö ꞊ya ö kwaa˗ ö bha ˮzʋʋdhɛ ˗kwɛɛ ˗zü, ʼö woo˗ batize, ˗a˗dhɛ ʼgü? ʼWɔn ˗së ˮsunman bha, ˗yö mɛ ˗to ˮkwanngdhö˗gɛn˗bho ˮwɛ ˗ee? ʼÖ ꞊dhɛ piʋ̈ˮ˗da˗mɛ ˗bha ʼwɔn ʼdhö, kö ꞊dheglizë ʼyii kë ʼyuöö˗ bhɛ ʼkpii˗ ˗dede ʼsü piʋ̈ˮ ʼka˗ee? Mɛ ˮbhɩɩdhe ʼö bhɔ ˗dhɛ bha˗ ʼgü, ˗wo˗gun ʼgbɛ ꞊dhɛ ˮsu söngʼ ga˗nu ʼdhö dhang˗ ˗bha.
15654:ˮKɛɛ ˗ka˗dhɛ ˗ga, ʼgbɛn˗ ʼyaa bo ö˗ya˗kɔ ʼka ꞊tɔn n dë˗nu. ꞊Dhɛ ꞊wa wo bo ꞊Tɛtɛyankan˗bɔ ˮyi ꞊bhaa˗sü ʼka, ʼö ʼwɔn ʼö kë˗wɔn ʼka˗waa ꞊gban kë ʼö ꞊Tɛtɛyankan waa˗ ˗Zlaan˗gɔ ˮdhiʋ̈˗mɛ ʼkpii˗ ˗waa mɛ ˗tiaandhe˗kpɛɛ ˗nu ʼwo gun˗ya˗sü ʼka mɛ ꞊gban ˮpɛpɛ wëëdhö ꞊dheglizë ʼgü bha, ʼwɔn ꞊gbaan yën˗wo wo ꞊zlɔɔ sië kö ʼwo zun ˮkpɛnng, ˮkɛɛ kö˗dhɛta ꞊ya dɔ dinngdhö kö ˮwʋ̈ng˗ziaan ꞊ya ziö mɛ ˗nu ˗wa ˗wo˗ma, ʼwo dho˗dhɛ ˗ga kö ꞊Tɛtɛyankan˗ya˗kë mü ꞊dhɛ ʼyii kë ʼmü ꞊dhɛ ˗ee? Kö˗ ˗gɛn ˮdhiʋ̈ ꞊ya˗zuö. Mɛ ˗nu ʼwo dho ˮkan˗ wo˗ta kö˗ya pö sië: «ʼOo, ˗zuzugwɛ, ma ꞊gee, bhi ʼö bhii doseng ꞊në ʼgü ˮgbɩɩdhɛ ʼö ü˗gɔ ʼö dho ʼto˗ ʼka ˮdhʋ̈ bha, ˗bhö nu ʼkii n dha˗dhe!»
15656:Dhiang bha˗yö kë mɛ ꞊gban ˮdhi˗dɔ bong ʼka.
15658:ˮYʋ̈˗më ʼö˗kë ʼyö ʼyii kë˗ pö: «꞊Yesu Klisi ʼü go Nazadhɛtö nu ʼkii n dha, ʼyö˗ pö˗˗zuzugwɛ ˗zë˗a˗dhɛ ˗yö ö dha… ?»
15666:ʼSangtaa˗pö bha, ʼpödhɛ ʼkpii˗ ˗mü ʼö˗ya˗sü ʼka Gbiaangwinng [Gbiaan ꞊gwinng˗] ˮKʋbhɩ ʼgü. ʼYënng˗ ˗wo ˗zian ʼka danwo pö ˮsɛ ʼgü. ʼYö mɛ ꞊ya kë ˮkɔdivuaa ˮsɛ ʼgü ʼö ʼyënng˗ ˗pö˗zian ʼka. ʼÖ go Gbiaangwinng ʼö dho ʼSangtaa, ˮkidhʋng˗kaɔn˗yiisiö ö ga do (41). ʼYö go ˮMaadhö ʼö bɔ Gbiaangwinng ʼö dho ʼmü, ʼö ˮkidhʋng˗kaɔng ˮsaaga ö ga ˗yiisiö (84).
15668:Sangtaadhɛ bha, ˮGwɛɛtaa ˮsɛ ˗todhʋ̈˗sü˗bha ʼpö˗ ˗mü.˗Kwɛ ˮgbli ꞊plɛ waa˗ ˗kwɛ ˮsɔɔdhu (2005) ʼgü, ʼyö guvɛɛnöma ʼö˗ gba ˮkumana ˮblëngnë ʼka.
15670:Sangtaadhɛ bha, ˗kwɛ ˗dede ʼö ˮkɔdivuaa˗mɛ ˗nu ʼkwa˗ya ʼflëë˗ ʼgü˗sü (depanngdanngsü) ꞊slɔɔ ʼka bha, kö ꞊klang˗ ˗kɔ ʼnë sɛɛnnë do˗yö mü. Mɛ doseng ʼö gun ꞊klang˗ ˗gɔ ˗mɛ ʼka, ʼö yö nü ʼö ö bha ꞊klang˗ ˮkwanngdhɛ ˗ya, ʼyö ʼwo gun˗ ˗dhɛ sië ˗Dhuaa Aanri, ʼyö gun ʼSangtaa mi ʼka.˗A˗bha ˮ꞊klang˗ ˮkwanngdhɛ bha, ʼyö ʼwo gun˗ ˗dhɛ sië ꞊zuënng gɛnngdhö.˗A˗gɛn˗mü ꞊dhɛ ꞊zuënng kpö ˗yö˗gun mü. ꞊Zuënng bha, ˮdhü˗mü ʼyö bhɔ ʼö kpö ʼka˗dhɛ do ʼgü.˗Wa ˮdhü˗kë döng kpeeˮ ʼka.˗Yö ˮziɔɔnziɔɔn ʼka˗a ˮyɛ ˗dhɛ ˗yö ʼya˗.˗Wo˗mɔɔ ˗bha ʼwo ꞊klong wo dhɔɔbhaa ʼka. ˗A kwɛɛˮ ʼnë˗nu bha ꞊në ꞊misié ˗Dhuaa Aanri ʼö gun ꞊klang˗ ˗nu ˗ma sië˗ ʼka ˗wëëwëësü.
15672: ˗Waa pö mɛ ˗nɛɛsü, Aanri ˗yö ˗gun ˗a mɛ do ʼka ˗dedewo. ꞊Ya ʼgo mü ˗a ˗bha ˮkwi ˗wo pö ˗wɔn ˗yö ˗gun ˮgbɩɩ˗ ˗dedewo ꞊dhɛ ʼpë ʼö ˮkwi ꞊në˗ ʼka ʼdhö. Mɛ ʼbhaa danwo ga do pö ꞊klang˗ ˮkwanngdhö, ˮkɛɛ kö ʼnë˗nu ʼö ʼwo nu ꞊klang˗ ˮdhiʋ̈ bha, ʼpë ʼwo˗ ˗dhɛ ˮkwi ˗wo, ʼwaa ʼdho ˗zian waa˗ nu ˗zian dɔ tongtongdhö. Mɛ ʼbha ˗nu ˗wo ˗go ʼbhlaadhɛ ˗nu ʼö ˮkwi˗wo ga do ˗ziaan ʼyaa ˮwɩ ˗bha, ˗a˗nu ʼgü ʼwo nu. ʼMɛ ˮʋʋ ʼmɛ ʼö danwo pö ꞊klang˗ ˮdhiʋ̈, pë˗yënngsü ʼbha ˗yö ˗gun mü ʼwo˗ ˗dhɛ ˮkwi˗wo ʼgü sɛnngbɔdhö, ʼwo nu˗ ʼka ʼwo˗ ˗da ˗a ˗mɛ bhɔ ʼgü. ʼPë ʼö bha, du ˗sö ˗mü, ʼyö ʼwo ʼgɔ˗ ˮyi ˗suö ˗a ˗bha, ʼö klɔɔnˮ ʼdhö ˗ta ˗sü ʼka˗ ˗bha yaa ˗yënngsü ʼka ꞊ni. ˗A ˗dhɔ ʼyaa gun mɛ ʼbha kë sië. ˗A ˗kë ˮdhʋ̈ ˗sü bha˗ ʼgü, ʼmɛ ʼkö ʼyaa ü ˮpiʋ̈ ʼü ˗ya, kö bhii ˮslë mɔɔ˗ ˗bha kö ˮkpʋngtaa ˗zlaan ꞊gban ˮpɛpɛ ˗wo nu ü˗dhɛ ˮtɛɛ ˗dede ʼka. ꞊Klang˗ ˗nu ʼkö ˮwɩ ˗dhɔ ʼyaa˗nu kë, ˗wo˗dho dɔ wo ˮdhi ˮtung ꞊klang˗ kë ˮtʋ̈ng ʼgü ʼö to˗ ʼka˗ ˮdhʋ̈ ʼö ˮdɔɔ ʼdhö ˗da ʼwo dho ˮkwanngdhö, kö ʼwa ʼdho ˮkwi ˗wo yaa pö˗ ʼö ʼwo ʼpë bha ˗ya ˗a ˗nu bhɔ ˗bha.
15674: ˗A ˮtʋ̈ng bha˗ ʼgü, ʼmɛ ʼdhɛ ü weeˮ ꞊ya ü ʼkun, ʼbha pö bhii ˗wo ˮkpɛnng, ˮpɛnbhɩsɔn ˗gbadhɛ ˗wo˗mü: «꞊Mɔsie pɛɛmɛte ʼmua˗ ꞊dö sɔɔtii silë ʼvu ʼplɛ˗.» ʼka. ʼPë bha ˗a ˗pö ˮdhʋ̈ ˗sü ʼö gun ˮkwi ˗wo ʼgü, ˮtʋ̈ng bha˗ ʼgü ˗wo ˗ta ˮdhuʋ̈˗ ˗tiaandhe ʼka, ˗yö˗gun ꞊dhɛ ˗gblü ʼdhö.
15676:ʼMɛ ˗nu ʼö˗nu˗gɔ ʼgü ʼdhö gun˗së˗dedewo ꞊wa˗pö ꞊dhɛ ˗kɔ ya˗ ʼdhö:«꞊Misie, plɛmɛte ʼmua˗ ꞊dö siɔɔtii ˮsiʋ̈ luuˮ ʼplɛ˗.» ˮKɛɛ ˗ziaanwo ʼmɛ ˗nu ʼwo˗ pö ꞊dhɛ ˗kɔ bha˗ ʼdhö bha, ˗wa ˗kë ˮkpënng˗ ʼka.˗Waa ˗ga ꞊dhɛ wo weeˮ ˗yaa ˗nu ʼkun ˗dee ʼgü, ʼyö ʼwo dho ˮvaandhö ˗gɔmɛdö ˗kuu ˮdhiʋ̈ ˮpɛngbɩsɔn bha˗ ˗gbadhɛ. ꞊Yakë ˮdhʋ̈ ˮsanni ˗wo ziö wo ˮgblʋʋ do bha˗ ʼgü, ˗a pö ˮdhʋ̈ ˗sü ʼka kö ˗yö ˗gɔmɛdë ˗zo ʼkun ʼnë ʼbha wo, kö ˗a ˗nu weeˮ ˗yaa ˗nu ʼkun ꞊tɔn ˮpɛɛpɛdhö, ʼyö to˗ ʼgü ʼwo ˗wo ˮkpɛnng ꞊tɔn.
15678:ˮKɛɛ mɛ ꞊gban ˗bha ˗gleng ʼyaa do. ꞊Klang˗ ˮdhiʋ̈ ʼnë ʼdhɛ ʼö ya, ˗wa ˗dhɛ ˗Tiagbö. ˗Tiagbö ˗zë ˗dhɛkpaɔyi do ʼka ꞊dhɛ ˗a weeˮ ˗yaa ʼkun ꞊tɔn ˮpɛɛpɛdhö, ʼyö gun wlüü ˗naa ꞊tɔn ʼö dho ꞊misie Aanri wëëʼ dhö ˮpɛnbhɩsɔn ˗gbadhɛ ˗dhɛ ʼgü. ʼDho ʼyii kë˗ bho ˮwaadhö bha˗a˗gɛn˗mü ꞊dhɛ kö ʼyöö˗ (ʼlëë) waa˗ ˮsuʋ̈ ˗nu ˗wa kë sië. ˗Yö ˗kë mü ꞊dhɛ ʼyii kë ʼmü ꞊dhɛ ˗ee, ˗dhɛ ˗ta ꞊ya dɔ dinngdhö.˗Goplöö [˗go ʼplöö˗] ʼö mɛ ʼbha˗nu ʼwo˗ ˗dhɛ ˗dɛ ˗maa ʼwo ꞊zuënng kpö bha˗ ʼgü bha, ˗dhɛ ˗ta ꞊ya ga˗nu˗ta. ꞊Klang˗ ˗nu ꞊gban ꞊wa wo ˮyan ˗ya ˗Tiagbö ˗ta. «˗Tiagbö ʼö mɛ ʼdhö˗ dɔ ya, ˗a ˗kɔ ˗yö˗dho ꞊mɔɔ˗ ʼpë ya pö˗sü˗bha ꞊nɔɔ ˗ee? »: Mɛ ʼbha˗nu˗wa˗ya wo˗de dhɛaˮ ʼkpɔ ˗sü˗bha wo zuëëˮ ʼpiʋ̈ ꞊dhɛ ˗kɔ bha˗ ʼdhö.
15680: ˗Tiagbö ꞊ya ö˗kɔ ˮklën kë ö˗tong˗ta ꞊dhɛ ˗kɔ ʼö mɛ ꞊gban ʼwo gun˗ kë ˗sü ʼka ˮtʋ̈ng bha˗ ʼgü ʼdhʋ̈, ˗ya ˗ya pö ˗sü ˗bha: «꞊Misie, prɛmɛte, prɛmɛte ˮsi luuˮ ʼfrɛ.» ˗A ˗pö˗sü ꞊në ˮgbɩɩ˗ kö ꞊misie Aanri ꞊ya ˮgbla ꞊dhɛ mɛ ˗yö ˗më ˗kë ˗yaa pö: «˗Më? Ü˗ ˗pö ꞊dhɛ? ˗A pö ʼbha wo kö ʼa˗ ʼgü ma ˗së ʼka.» ʼYöö˗ ˗bha ˗Tiagbö kë ˗sü waa˗ ˮsuʋ̈ ˗nu ꞊gban ˗wɔn ʼgü, ˗a ʼdhɛ ʼö dho˗ pö˗, ˗ya ˗pö ö ˗wo ꞊wlöö: «꞊Misie, prɛmɛte, prɛmɛte ˮsi luuˮ ʼfrɛ˗.»
15682:Kö Aanri ꞊ya ˮgbla do ʼbha wo ˗yaa pö: «Ü˗ ˗pö ꞊dhɛ? » ʼÖ dɔ mü kö˗ya dɔ ˗Tiagbö ˗gɔ ʼya˗, kö˗ya ö ˮdhiʋ̈ ˗dhɛ ʼkun kpɛnngkpɛnngdhö kö˗ weeˮ ʼya ʼdho ˗wo. Kö ˗yö kë sië ʼzë ˗zë ʼzë dhö.˗A ʼdhɛ ʼö dho pö˗ ꞊taama, ˗ya˗pö: «Misie, a˗ ˗pö maa ʼdho ˮkanng ˮdhiʋ̈.» ˗A˗pö ˮdhʋ̈ ˗sü ꞊në ˮgbɩɩ˗ kö ꞊ya ˮkwɛɛ ʼsü ꞊ya zun ˮkpɛnng. ʼYii˗dhɛ ˗ziaan ˗ga ö ꞊taama tongtongdhö. ʼÖ dho ˗yö ö ˗gɔ ˗dɔ ö ˗mɛ ˗nu ˮpiʋ̈ dhɛngdhö doseng. Dhɛngdhɛ bha, ꞊në ʼwo ʼwɔn ꞊gban˗kë˗bha. ʼSangtaa ˮdhɔɔyi ꞊në ʼö ʼwo nu˗ ʼka ˮdhɔɔ ʼgü.
15684: ˗Yö ˗sü˗dhɛkpaɔyi bha ꞊në˗ ˗bha, ʼyö ꞊klang˗ ˗nu ʼwo˗Tiagbö ˗dhɛ ˮkang ˮdhiʋ̈. ʼTɔ ʼö bha ˗yö ˗tun ˗a ˗bha ꞊dɛɛ.
15686: ˗Wa˗dhɛ ˗Tiagbö ˮKang ˮdhiʋ̈.

```
## Equals

```
grep -P -- "\p{L}꞊\p{L}" proof-of-concept-text.txt | tr " " "\n" | sort | uniq -c | grep -P "\p{L}꞊\p{L}"
```
```
      1 ˗A꞊plɛ
      1 Bakabaa꞊la
      1 ˗bha꞊bɛdhɛ
      1 bha꞊Dhɛ
      1 ʼBha꞊kpëng,
      1 ˗bho꞊badhong
      1 ʼ꞊Bhöö
      1 bɔ꞊taama
     20 ˮgbɩɩ꞊kwaa
      1 ʼka꞊dhɛ
      1 kë꞊klang˗
      1 ʼke꞊Trɔɔn
      1 ˮ꞊klang˗
      1 ʼklɔɔ꞊ya
      1 ʼko꞊Patrɔnng,
      1 ʼkpii꞊ya
      1 Kwaa꞊dhuutii
      1 kwaa꞊kakao
      1 ꞊kwɛɛ꞊danwo
      1 ˗nu꞊zɛ
      1 ʼö꞊gwan
      1 ʼö꞊gwinngdhɛ
      1 ˗sɛa꞊loo˗
      1 see꞊në
      1 ʼto꞊plɛ
      1 waa꞊Kesɩ
      1 waa꞊Kɛyang
      1 waa꞊Madhi
      1 waa꞊mangzii
      1 ʼwëë꞊slɔɔ
      1 woo꞊de
      1 ʼyaa꞊gban
      1 ʼyaa꞊gee
      1 yö꞊në
      1 yöö꞊gban
      2 ʼYö꞊patrɔnng
```
