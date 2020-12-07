module ProblemData where

testDataRaw = "ecl:gry pid:860033327 eyr:2020 hcl:#fffffd\n\
\byr:1937 iyr:2017 cid:147 hgt:183cm\n\
\n\
\iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884\n\
\hcl:#cfa07d byr:1929\n\
\n\
\hcl:#ae17e1 iyr:2013\n\
\eyr:2024\n\
\ecl:brn pid:760753108 byr:1931\n\
\hgt:179cm\n\
\n\
\hcl:#cfa07d eyr:2025 pid:166559648\n\
\iyr:2011 ecl:brn hgt:59in"

myDataRaw = "byr:1971\n\
\iyr:2017 hgt:160cm\n\
\eyr:2020 ecl:hzl\n\
\pid:157096267\n\
\n\
\hgt:183cm\n\
\pid:368895060\n\
\ecl:oth eyr:2020\n\
\iyr:2013\n\
\byr:1966\n\
\n\
\ecl:lzr cid:279 pid:192cm\n\
\hcl:1f7352 iyr:2014 hgt:70cm eyr:1983\n\
\byr:2004\n\
\n\
\hcl:#602927 iyr:2018 byr:1938 ecl:blu\n\
\eyr:2024 hgt:172cm\n\
\pid:839621424\n\
\n\
\ecl:#12f268\n\
\hcl:#6b5442\n\
\iyr:2012 byr:2011\n\
\eyr:1933 pid:189cm hgt:155in\n\
\n\
\byr:1954\n\
\ecl:gry pid:664227667 eyr:2028\n\
\hgt:151cm\n\
\iyr:2019\n\
\n\
\ecl:gry\n\
\byr:1931 iyr:2017\n\
\pid:459927933 eyr:2028\n\
\hgt:67in hcl:#fffffd\n\
\n\
\cid:322 hgt:163cm\n\
\byr:1969 hcl:#a97842 pid:472877556\n\
\iyr:2019\n\
\ecl:amb eyr:2030\n\
\n\
\hcl:#733820 ecl:brn byr:2000 eyr:2022 iyr:2014 cid:320 pid:751634349\n\
\hgt:180cm\n\
\n\
\ecl:blu eyr:2028\n\
\hcl:#866857 byr:2029 hgt:191cm iyr:2010\n\
\pid:170cm cid:123\n\
\n\
\pid:258660154 byr:1921 hgt:161cm\n\
\eyr:2030\n\
\cid:217 iyr:2012\n\
\hcl:#4dd6d4 ecl:grn\n\
\n\
\hgt:170cm byr:1978 eyr:2022 pid:399347273\n\
\iyr:2010 cid:109 ecl:blu hcl:#602927\n\
\n\
\pid:172106685\n\
\hgt:183cm\n\
\ecl:gry iyr:2020 eyr:2025 hcl:#18171d byr:1980 cid:289\n\
\n\
\cid:77 ecl:#254ad9\n\
\byr:2017 pid:169290741 iyr:2003 hgt:85 hcl:z\n\
\n\
\hgt:155cm byr:1987 ecl:oth hcl:#fffffd\n\
\iyr:2010\n\
\n\
\ecl:brn iyr:2014 cid:74\n\
\hcl:#623a2f\n\
\hgt:187cm byr:1955 pid:008305281 eyr:2025\n\
\n\
\pid:428624233 ecl:grn\n\
\eyr:2027 hgt:167cm hcl:#623a2f byr:1960 iyr:2016\n\
\n\
\eyr:2027 pid:358876826 hgt:171cm ecl:oth byr:1957 iyr:2018\n\
\hcl:#ceb3a1\n\
\cid:314\n\
\n\
\ecl:grn eyr:2030\n\
\hgt:73in iyr:2011 hcl:#602927\n\
\n\
\hgt:76in byr:2029\n\
\pid:2703176 iyr:2020\n\
\eyr:2037 ecl:#95d926\n\
\hcl:9574d2\n\
\n\
\eyr:2020 hgt:164cm\n\
\byr:1949 hcl:#fffffd pid:591281293 iyr:2014 cid:136\n\
\n\
\cid:268 hgt:73in hcl:#6b5442 eyr:2025 ecl:brn byr:1988 pid:899417027 iyr:2015\n\
\n\
\iyr:2020 hcl:#b6652a hgt:177cm\n\
\eyr:2028 ecl:hzl\n\
\byr:1995 pid:594197202\n\
\n\
\hcl:#a97842 hgt:179cm byr:1930\n\
\ecl:brn pid:010268954 eyr:2020 iyr:2010\n\
\n\
\iyr:2022 pid:93390086\n\
\cid:321 eyr:2034 hcl:#a97842 hgt:168in byr:2006 ecl:#a8f84c\n\
\n\
\eyr:2028 ecl:blu byr:1935\n\
\hcl:#6b5442 pid:187679418\n\
\hgt:174cm iyr:2016\n\
\n\
\iyr:2019 hgt:164cm pid:704379775\n\
\ecl:oth hcl:#888785 byr:1930\n\
\eyr:2025\n\
\n\
\hcl:#6b5442 cid:168\n\
\hgt:171cm eyr:1944 iyr:2018 pid:675364934\n\
\byr:1962\n\
\ecl:hzl\n\
\n\
\hcl:z\n\
\eyr:2039\n\
\ecl:zzz pid:26281402 cid:144 iyr:1928\n\
\hgt:166cm\n\
\n\
\ecl:hzl hcl:#7d3b0c\n\
\eyr:2022 pid:011589584\n\
\hgt:64in byr:1945 iyr:2014\n\
\n\
\byr:1950 hcl:#18171d pid:685748669 eyr:2028 iyr:2010 hgt:176cm ecl:grn\n\
\n\
\byr:1989\n\
\hgt:163cm hcl:#18171d ecl:grn iyr:2020 pid:721397788 cid:308 eyr:2020\n\
\n\
\pid:443496560 iyr:1999\n\
\eyr:2027 hcl:z\n\
\hgt:69in ecl:zzz byr:2019\n\
\cid:108\n\
\n\
\pid:#c9d804 eyr:2011\n\
\ecl:#574df9 iyr:2027 hcl:z byr:2018\n\
\hgt:64\n\
\n\
\hgt:69cm\n\
\iyr:1926 hcl:fdcce6\n\
\ecl:#28b358\n\
\eyr:2026\n\
\byr:1994\n\
\pid:76404593\n\
\n\
\eyr:2020\n\
\ecl:hzl pid:978839539 hcl:#efcc98\n\
\byr:1935 cid:121\n\
\hgt:165cm\n\
\n\
\ecl:amb\n\
\byr:1951 hgt:186cm pid:812513486 iyr:2012 eyr:2029 hcl:#fffffd\n\
\n\
\hcl:fcdd61 hgt:168in ecl:grt pid:8474140699 byr:1924 iyr:2027 eyr:2023\n\
\n\
\ecl:oth hcl:#866857\n\
\byr:1965 pid:533941934 hgt:166cm iyr:2019 eyr:2040\n\
\n\
\eyr:2032 pid:0795438812 iyr:2009 hcl:z\n\
\byr:2028 hgt:131 ecl:gmt\n\
\n\
\cid:102 byr:1923 eyr:2025\n\
\pid:222102208 iyr:2019 hcl:#341e13\n\
\hgt:167cm\n\
\ecl:amb\n\
\n\
\hgt:180cm byr:1956 iyr:2014 eyr:2022\n\
\ecl:oth cid:175 hcl:#888785\n\
\n\
\cid:216 eyr:2022\n\
\ecl:brn pid:002875069 iyr:2019 hcl:#cfa07d byr:1991 hgt:164cm\n\
\n\
\iyr:2014 byr:1933 pid:537809907\n\
\hgt:185cm eyr:2029 hcl:#341e13 ecl:blu\n\
\n\
\cid:286 hgt:166cm byr:1977 iyr:2012 pid:541909675 ecl:oth eyr:2020\n\
\hcl:#59eb12\n\
\n\
\hcl:#18171d cid:329 byr:1921 eyr:2027 iyr:2019\n\
\pid:440820443 hgt:75in ecl:blu\n\
\n\
\hcl:#733820 hgt:177cm\n\
\pid:085529831 eyr:2029 iyr:2010 ecl:amb byr:1972\n\
\n\
\pid:704125918 hcl:#b6652a byr:1981\n\
\ecl:#698ae8 cid:141 iyr:2018 eyr:2026 hgt:66in\n\
\n\
\iyr:2020 eyr:2022\n\
\hgt:191cm hcl:#7d3b0c\n\
\ecl:blu byr:1943 pid:969407635\n\
\n\
\pid:10899196\n\
\hgt:161cm\n\
\ecl:lzr iyr:2023 hcl:#ceb3a1 byr:1986 eyr:2012\n\
\n\
\hcl:#7d3b0c ecl:utc eyr:2020\n\
\byr:2028 pid:#f8c441 iyr:2030\n\
\hgt:164cm\n\
\n\
\byr:2003 hcl:z iyr:2012 hgt:187in\n\
\ecl:gry eyr:2030 pid:150cm\n\
\n\
\pid:427618420 hgt:155cm iyr:2012\n\
\ecl:brn\n\
\byr:1948 eyr:2029 hcl:#6b5442\n\
\n\
\ecl:oth hgt:81\n\
\byr:2025 cid:66 pid:174cm hcl:z\n\
\eyr:2021\n\
\n\
\byr:2027 ecl:lzr hcl:#888785 eyr:1923 hgt:110 cid:54 iyr:1939\n\
\n\
\hcl:#341e13 byr:1961 eyr:2022 hgt:163cm cid:137 ecl:amb\n\
\iyr:2019\n\
\n\
\hcl:#866857\n\
\iyr:2020\n\
\byr:2005\n\
\hgt:139 ecl:amb cid:181\n\
\eyr:2016\n\
\pid:181cm\n\
\n\
\byr:2030\n\
\iyr:2014\n\
\hcl:#733820 cid:74 eyr:2021 hgt:179cm\n\
\pid:7938817872\n\
\ecl:amb\n\
\n\
\hcl:91a6dd\n\
\iyr:2019 byr:2024\n\
\hgt:72cm\n\
\ecl:gmt eyr:2023\n\
\pid:8440093771\n\
\n\
\ecl:grn byr:1963 cid:60 iyr:2030\n\
\hgt:74 eyr:2022\n\
\pid:193189388\n\
\hcl:#b6652a\n\
\n\
\pid:403849590 byr:2012\n\
\eyr:1951 cid:90 iyr:2023\n\
\hgt:69cm hcl:z ecl:gmt\n\
\n\
\iyr:2010 hcl:#341e13\n\
\pid:011326174 hgt:185cm byr:1976 cid:207 eyr:2027 ecl:amb\n\
\n\
\hgt:64in\n\
\pid:499837104 hcl:#3be285\n\
\byr:1944\n\
\eyr:2024 iyr:2017\n\
\ecl:gry\n\
\n\
\eyr:2032 pid:#850d4e hcl:deddda ecl:brn hgt:172 byr:2004\n\
\cid:244 iyr:2022\n\
\n\
\hcl:a3346d ecl:amb\n\
\pid:#505713 hgt:74cm eyr:2010 iyr:2020\n\
\n\
\byr:1987\n\
\ecl:oth iyr:2012 eyr:2023\n\
\pid:131199420 cid:112 hcl:#a97842\n\
\n\
\cid:256 hcl:#a97842 byr:2000 iyr:2018 ecl:oth\n\
\eyr:2022 pid:637777693 hgt:160cm\n\
\n\
\hgt:152cm\n\
\cid:164 hcl:#866857 ecl:grn eyr:2025\n\
\pid:495224989 iyr:2020 byr:1949\n\
\n\
\iyr:2010\n\
\cid:288 byr:1986 ecl:blu\n\
\pid:304077824\n\
\eyr:2020\n\
\n\
\hgt:182cm\n\
\ecl:blu\n\
\hcl:#18171d pid:047931925 byr:1964\n\
\iyr:2012 eyr:2030 cid:167\n\
\n\
\byr:1958\n\
\hcl:#866857 iyr:2019 hgt:165cm pid:553631683\n\
\cid:109 ecl:gry\n\
\eyr:2023\n\
\n\
\cid:156\n\
\iyr:2014 pid:811368482 eyr:2026 hcl:#b6652a byr:1994\n\
\hgt:184cm ecl:brn\n\
\n\
\hcl:#733820\n\
\hgt:183cm ecl:grn\n\
\pid:265625165 byr:1943 cid:344\n\
\iyr:2011\n\
\n\
\iyr:2017 hcl:#c0946f pid:716422629 cid:104 byr:1974\n\
\hgt:160cm eyr:2021 ecl:brn\n\
\n\
\byr:2002 hgt:180cm hcl:#602927\n\
\eyr:2025 ecl:grn iyr:2011 pid:887584172\n\
\n\
\hcl:#888785 ecl:brn eyr:2026\n\
\pid:14483306 byr:1947\n\
\hgt:177cm iyr:2015\n\
\n\
\hcl:#b6652a\n\
\ecl:#64783e eyr:2020 hgt:163 pid:651615946\n\
\iyr:2012 byr:1999\n\
\n\
\iyr:2014 ecl:gry hgt:188cm eyr:2028 pid:503058612 hcl:#a31066\n\
\n\
\hgt:178cm hcl:z\n\
\ecl:amb\n\
\pid:17656631\n\
\eyr:2031 byr:2023\n\
\n\
\hgt:166cm pid:783568747 hcl:#341e13\n\
\byr:1955 ecl:grn eyr:2023\n\
\n\
\iyr:2016 hgt:161cm byr:1989\n\
\eyr:2023\n\
\ecl:amb pid:133770783\n\
\hcl:#fffffd\n\
\n\
\cid:75 byr:1986 eyr:2020 pid:099478576 ecl:blu\n\
\hcl:#733820\n\
\iyr:2011 hgt:158cm\n\
\n\
\pid:911200183 hcl:#602927 eyr:2029 iyr:2018 ecl:brn hgt:181cm\n\
\byr:1937\n\
\n\
\iyr:1928 byr:2020 hcl:579202\n\
\hgt:60 ecl:utc eyr:1963 pid:157cm\n\
\cid:253\n\
\n\
\eyr:2028 iyr:1949\n\
\pid:284455762 hcl:#a97842 ecl:oth byr:1947 hgt:163cm\n\
\n\
\hcl:#18171d eyr:2025 cid:222\n\
\byr:1924 ecl:oth\n\
\pid:898594506 hgt:182cm\n\
\iyr:2017\n\
\n\
\byr:1935 iyr:2027\n\
\hgt:160in pid:#c090c3\n\
\hcl:#623a2f cid:162 eyr:1942 ecl:amb\n\
\n\
\iyr:2014 hgt:160cm eyr:2028 hcl:#623a2f byr:2010\n\
\pid:684765216 ecl:blu\n\
\n\
\byr:1958\n\
\hgt:154cm hcl:#a97842\n\
\ecl:oth iyr:2015 eyr:2020 cid:334\n\
\n\
\pid:636691339 iyr:2018\n\
\byr:1930\n\
\hcl:#b6652a cid:86\n\
\hgt:184cm ecl:oth\n\
\eyr:2029\n\
\n\
\iyr:2025\n\
\hgt:76cm ecl:#043004 hcl:z\n\
\byr:2009 eyr:1999\n\
\n\
\eyr:2020 pid:56419390 iyr:2015 hcl:#ceb3a1 ecl:utc\n\
\hgt:98\n\
\n\
\iyr:2014 byr:1927 hcl:#fffffd ecl:amb eyr:2022\n\
\hgt:188cm pid:602778565\n\
\n\
\hcl:#cfa07d eyr:2029 byr:1937 pid:7912057436\n\
\ecl:hzl\n\
\cid:192 hgt:68in iyr:2012\n\
\n\
\hgt:155cm\n\
\iyr:2015 byr:1954 pid:559203670\n\
\ecl:blu hcl:#fffffd eyr:2025\n\
\n\
\hcl:#341e13 byr:1998 iyr:2019\n\
\cid:312\n\
\ecl:oth\n\
\pid:230874778 hgt:161cm\n\
\n\
\iyr:2011 ecl:amb\n\
\eyr:2026\n\
\hgt:163cm byr:1932 hcl:#733820 pid:850176278\n\
\n\
\eyr:2030\n\
\hgt:170cm\n\
\iyr:2017 byr:1972\n\
\pid:014731313\n\
\hcl:#341e13 ecl:brn\n\
\n\
\pid:133005637\n\
\hgt:167cm\n\
\cid:317\n\
\eyr:2025 hcl:#341e13 iyr:2012 ecl:gry byr:1950\n\
\n\
\iyr:2029 pid:745014772 hgt:68in\n\
\eyr:2034 ecl:hzl\n\
\hcl:ec07ce\n\
\n\
\hgt:165cm\n\
\ecl:gry\n\
\hcl:#a97842 byr:1921 cid:263 pid:609363367\n\
\n\
\pid:192cm hcl:18f308\n\
\ecl:oth\n\
\eyr:2037 cid:239 iyr:2026 byr:2010\n\
\n\
\hcl:d0e525 eyr:2037 iyr:2019\n\
\cid:197\n\
\pid:469740743\n\
\hgt:186in ecl:brn byr:1977\n\
\n\
\ecl:hzl cid:254 hgt:165cm\n\
\eyr:2024 byr:1996\n\
\iyr:2021 pid:797277746 hcl:e286e8\n\
\n\
\hcl:#b6652a cid:142 ecl:oth hgt:190cm byr:1962 pid:997137384 iyr:2020\n\
\eyr:2029\n\
\n\
\ecl:brn byr:1962 hcl:#866857 iyr:2020 hgt:152cm pid:701556397 cid:121 eyr:2029\n\
\n\
\eyr:2024 cid:186 hcl:z\n\
\byr:1962 hgt:155cm pid:448098321 iyr:2017 ecl:grn\n\
\n\
\iyr:2016\n\
\hgt:168cm byr:1999\n\
\cid:286\n\
\hcl:#18171d pid:223995430 eyr:2022 ecl:blu\n\
\n\
\pid:227780276 ecl:blu iyr:2017 byr:1985 hcl:#6b5442 hgt:183cm eyr:2028\n\
\n\
\hgt:190cm\n\
\ecl:oth eyr:2030 cid:223 hcl:#888785 iyr:2010\n\
\pid:115829664 byr:1967\n\
\n\
\eyr:1992 pid:0688674980 hcl:z\n\
\byr:2028\n\
\hgt:186in ecl:#849f7b\n\
\iyr:2029\n\
\cid:64\n\
\n\
\eyr:2025\n\
\iyr:2013 byr:1958 ecl:grn\n\
\hcl:#ceb3a1\n\
\hgt:153cm pid:815357118\n\
\n\
\pid:038013822 hgt:180cm iyr:2013\n\
\hcl:#623a2f\n\
\ecl:grn eyr:2029 byr:1949\n\
\n\
\byr:1923\n\
\cid:299 hgt:184cm iyr:2020\n\
\hcl:#fffffd eyr:2027\n\
\ecl:hzl\n\
\n\
\byr:1930\n\
\iyr:2012\n\
\ecl:grn hcl:#87f2c8 pid:787371085\n\
\n\
\iyr:2019\n\
\eyr:2028 pid:107626362 hgt:183cm\n\
\ecl:grt hcl:#623a2f byr:1985\n\
\n\
\byr:2011\n\
\hgt:68in iyr:2002 ecl:#5dfa18 hcl:#341e13 pid:205853974\n\
\n\
\iyr:2014\n\
\pid:179cm\n\
\hcl:13b9e3 eyr:2022 ecl:#b1759b hgt:184in\n\
\byr:1954\n\
\n\
\hgt:183cm hcl:#efcc98\n\
\pid:428260080 cid:231 eyr:2025 ecl:grn\n\
\iyr:2010\n\
\byr:1957\n\
\n\
\iyr:2016\n\
\ecl:gry\n\
\pid:192cm eyr:2026\n\
\byr:1956\n\
\hgt:174cm hcl:#623a2f\n\
\n\
\eyr:2021 ecl:blu cid:230\n\
\byr:1923\n\
\pid:438732879 hgt:167cm\n\
\hcl:#602927\n\
\n\
\byr:1948 ecl:xry\n\
\pid:154cm hgt:179cm eyr:2029 iyr:2017\n\
\hcl:#dd59ab\n\
\n\
\hcl:#ceb3a1\n\
\iyr:2014 byr:1981 hgt:167cm ecl:grn\n\
\eyr:2021\n\
\pid:926925947\n\
\n\
\iyr:1985\n\
\pid:652196636 hcl:#18171d ecl:#ff3e10 hgt:162cm byr:2012 eyr:2023 cid:171\n\
\n\
\eyr:2029\n\
\hgt:166cm\n\
\pid:499909488 byr:1929 hcl:#866857 ecl:brn iyr:2013\n\
\n\
\pid:440245122\n\
\byr:1992 hgt:179cm iyr:2010 cid:181 ecl:brn hcl:#888785 eyr:2020\n\
\n\
\eyr:2029 hcl:#888785 pid:274994154 ecl:hzl\n\
\iyr:2014 byr:1995\n\
\n\
\pid:3195072620\n\
\hcl:z ecl:hzl cid:130 iyr:2030 eyr:2034 hgt:157\n\
\n\
\hcl:#1b0a51\n\
\pid:129985083 eyr:2029\n\
\hgt:192cm cid:236 byr:1996 ecl:blu iyr:2016\n\
\n\
\ecl:lzr pid:899902347 iyr:1982\n\
\hcl:#cfa07d eyr:2028 byr:1927 hgt:155in\n\
\n\
\cid:187 eyr:2029 hcl:#efcc98 byr:1986 pid:760318090\n\
\hgt:169cm iyr:2018 ecl:amb\n\
\n\
\hcl:#fffffd eyr:2021 pid:532530085 iyr:2019 byr:1995 hgt:169cm\n\
\n\
\iyr:1980\n\
\hcl:z eyr:2019\n\
\hgt:72cm pid:6532875244 ecl:#2f2221 byr:2006\n\
\n\
\hgt:174cm byr:1920\n\
\ecl:gry pid:#14fae7 eyr:2026 hcl:#1814d1\n\
\iyr:2013\n\
\n\
\hcl:#ceb3a1 ecl:grn\n\
\iyr:2018\n\
\byr:1978\n\
\hgt:183cm pid:566862236\n\
\eyr:2028\n\
\n\
\iyr:2020 ecl:amb\n\
\pid:618246345 byr:1940\n\
\hgt:60cm eyr:2027 cid:242 hcl:#b6652a\n\
\n\
\ecl:grn\n\
\hcl:#18171d byr:1957 pid:325895714 iyr:2018\n\
\eyr:2023 hgt:162cm\n\
\n\
\ecl:#a3ed7b\n\
\byr:2024\n\
\hcl:z eyr:2022 iyr:2016 cid:350 hgt:119 pid:185cm\n\
\n\
\iyr:2010\n\
\byr:2004 eyr:2032 cid:326 hcl:6019c5\n\
\ecl:gmt hgt:137\n\
\n\
\pid:477848102 eyr:2025 hgt:178cm hcl:#e31a3d ecl:brn\n\
\byr:1943\n\
\n\
\pid:#65fca1 eyr:2026 hgt:192cm cid:293 ecl:blu byr:2026 iyr:2024 hcl:#a97842\n\
\n\
\eyr:2025 cid:181 hgt:186cm byr:1968\n\
\ecl:brn pid:318405093 hcl:#341e13 iyr:2015\n\
\n\
\hcl:#c12f4b eyr:2025 cid:311 pid:652667870\n\
\ecl:oth\n\
\hgt:166cm\n\
\byr:1981 iyr:2016\n\
\n\
\ecl:hzl\n\
\byr:2025 iyr:2014\n\
\hcl:138d5c eyr:2037 hgt:160in cid:206\n\
\pid:#d9119b\n\
\n\
\pid:51419740 cid:141\n\
\iyr:2012\n\
\hgt:90 ecl:#9438f4 hcl:#7d3b0c byr:2021 eyr:2020\n\
\n\
\pid:#0bc613\n\
\hcl:z byr:2017\n\
\hgt:91 cid:284 eyr:1966 iyr:2008\n\
\ecl:#974ceb\n\
\n\
\cid:344 iyr:1953 eyr:2020 ecl:hzl byr:2019 hcl:z pid:2969979\n\
\n\
\ecl:gry\n\
\byr:1925 cid:113\n\
\hcl:#a97842 pid:744660539 hgt:153cm iyr:2020\n\
\n\
\hgt:177 pid:856186682 eyr:1968 ecl:blu\n\
\cid:167 byr:1986 hcl:#866857 iyr:2015\n\
\n\
\byr:1937 eyr:2021 iyr:2017\n\
\cid:91 hgt:183cm hcl:#a97842 ecl:blu pid:149192621\n\
\n\
\hgt:154cm hcl:#602927 ecl:oth\n\
\byr:1939 iyr:2018 pid:670669747 eyr:2029 cid:301\n\
\n\
\eyr:2025 pid:249412970 ecl:oth\n\
\iyr:2016\n\
\byr:1921 hcl:#a97842 hgt:176cm\n\
\n\
\byr:1969\n\
\iyr:2019 hcl:9de0cb\n\
\pid:644476999 hgt:75in\n\
\ecl:oth eyr:2022\n\
\n\
\hgt:164cm iyr:2016\n\
\byr:1988 ecl:gry\n\
\eyr:2030\n\
\hcl:#efcc98 pid:393258887\n\
\n\
\hgt:183cm pid:6930456 eyr:2023 cid:210 ecl:#766482 byr:2023 iyr:2017 hcl:z\n\
\n\
\iyr:2011 hgt:165cm eyr:2020 byr:1966\n\
\hcl:#efcc98 pid:691169980 ecl:blu\n\
\n\
\iyr:2011 hcl:#602927 eyr:2029\n\
\byr:1966\n\
\ecl:oth hgt:165cm pid:945383793\n\
\n\
\pid:567096741 iyr:2025\n\
\ecl:gry eyr:1944 hgt:187in byr:2026 hcl:8ac39a\n\
\n\
\byr:2025\n\
\eyr:2025 iyr:2015\n\
\hgt:191 pid:1659927272 ecl:grn\n\
\n\
\iyr:2027 hgt:63in byr:1963 pid:874200881\n\
\ecl:oth hcl:#c0946f eyr:2029\n\
\n\
\hcl:#b37a48\n\
\byr:1957 ecl:hzl\n\
\eyr:2030\n\
\iyr:2013\n\
\n\
\pid:#38e0fd eyr:2019 cid:103\n\
\hgt:153in\n\
\ecl:#956d7c\n\
\iyr:2029 byr:2029 hcl:z\n\
\n\
\eyr:2021 pid:956654136\n\
\hcl:#854d9d hgt:186cm byr:1960 iyr:2015\n\
\n\
\eyr:2020\n\
\byr:1995\n\
\hcl:#b6652a ecl:amb pid:746523744 iyr:2015\n\
\hgt:178cm\n\
\n\
\eyr:2020 hgt:173cm cid:322 byr:1956 iyr:2020 ecl:blu\n\
\pid:833595649\n\
\n\
\ecl:gry iyr:2017 eyr:2020 pid:537816651 hgt:183cm cid:160 byr:1996 hcl:#733820\n\
\n\
\iyr:1920\n\
\byr:2013\n\
\hcl:z eyr:1932 pid:169cm\n\
\n\
\eyr:2030 cid:258 iyr:2020 ecl:grn byr:1947 pid:571610070\n\
\hgt:162cm hcl:#888785\n\
\n\
\byr:2025 hgt:155cm iyr:2030 ecl:amb eyr:2002\n\
\n\
\iyr:2020 ecl:hzl\n\
\pid:090561426 hcl:#a97842\n\
\byr:1923\n\
\n\
\ecl:hzl\n\
\iyr:2019\n\
\hcl:#c0946f eyr:2025\n\
\byr:1999 hgt:178cm pid:026042669\n\
\n\
\hgt:74in\n\
\eyr:2027 iyr:2015 ecl:gry\n\
\byr:2005 pid:#28b09d\n\
\n\
\eyr:1953 byr:2014 ecl:lzr cid:202 hcl:1af88d\n\
\iyr:2028\n\
\n\
\cid:99\n\
\pid:706477697 iyr:2018 hgt:171cm eyr:2027\n\
\ecl:oth\n\
\byr:1978 hcl:#930aef\n\
\n\
\iyr:2017\n\
\byr:1935\n\
\eyr:2029\n\
\ecl:amb pid:321873254 hgt:179cm hcl:#1b9aea cid:160\n\
\n\
\iyr:2013 ecl:hzl eyr:2023 cid:233 byr:1996 pid:605962483 hgt:175cm hcl:#ceb3a1\n\
\n\
\pid:754905579\n\
\ecl:brn eyr:2021 hcl:#ceb3a1\n\
\byr:1943 hgt:59in\n\
\n\
\cid:110 byr:1935 eyr:2021 hgt:172cm iyr:2020\n\
\pid:643443673 hcl:#888785 ecl:brn\n\
\n\
\ecl:gmt hcl:#cfa07d\n\
\hgt:148 iyr:2024 pid:635827422\n\
\eyr:1935\n\
\byr:1964\n\
\n\
\iyr:2012 byr:2016 hcl:z\n\
\hgt:178cm pid:213073693 eyr:2005\n\
\n\
\ecl:#b3cc58 byr:2027 pid:172cm hcl:#888785 hgt:177cm eyr:1988\n\
\iyr:2027\n\
\n\
\eyr:2029\n\
\byr:1923\n\
\hcl:#d9855b cid:134 pid:068598146 hgt:152cm ecl:blu\n\
\n\
\cid:309\n\
\iyr:2010 ecl:oth hgt:188cm hcl:#18171d eyr:2028 pid:174227992 byr:1931\n\
\n\
\iyr:2010 hgt:72in cid:266 ecl:brn pid:0090854908\n\
\hcl:#623a2f eyr:2032\n\
\byr:1967\n\
\n\
\pid:192554211 eyr:2020 hgt:192cm ecl:gry cid:158 iyr:2015 byr:1940\n\
\hcl:#efcc98\n\
\n\
\cid:248 hgt:75in eyr:2025 byr:1957 hcl:#c0946f\n\
\iyr:2019\n\
\ecl:brn\n\
\n\
\pid:96533216 hcl:z ecl:blu eyr:2027 hgt:193cm cid:224\n\
\byr:1928 iyr:2014\n\
\n\
\iyr:2010\n\
\eyr:2022 cid:276 hcl:#a97842 byr:1968 ecl:gry pid:808830560 hgt:188cm\n\
\n\
\hgt:158in\n\
\pid:097590485 iyr:2030 eyr:1940 hcl:z cid:274\n\
\ecl:#2ea9ec\n\
\byr:2024\n\
\n\
\pid:616947922 byr:1982 iyr:2014 hgt:186cm ecl:oth hcl:#888785\n\
\n\
\byr:1941 pid:039744699 hcl:#efcc98 hgt:190cm iyr:2011\n\
\eyr:2020 ecl:blu\n\
\n\
\byr:1971\n\
\ecl:hzl hgt:65in\n\
\pid:076133019 iyr:2019 eyr:2030\n\
\n\
\ecl:blu iyr:2011 byr:1928 hcl:#c0946f hgt:172cm eyr:2026 pid:171544458\n\
\n\
\byr:1929 pid:145819079 ecl:hzl\n\
\hgt:192cm iyr:2015 eyr:2020 hcl:#b6652a\n\
\n\
\byr:1981 ecl:amb pid:123467924\n\
\eyr:2024 hcl:#18171d\n\
\hgt:184cm iyr:2017\n\
\n\
\byr:1957\n\
\ecl:oth pid:881258191 hgt:65in iyr:2010\n\
\hcl:#a97842\n\
\n\
\ecl:amb eyr:2020 hgt:152cm\n\
\iyr:2021 pid:9448811025 hcl:#c0946f cid:204 byr:2030\n\
\n\
\eyr:2022 pid:208725350\n\
\byr:1944 ecl:blu hcl:#18171d cid:164\n\
\hgt:170cm iyr:2014\n\
\n\
\hcl:#18171d eyr:1952 iyr:1939 pid:788651896 hgt:157in byr:2007\n\
\n\
\byr:1944 cid:87 pid:463367304\n\
\iyr:2020 hgt:188cm ecl:gry\n\
\eyr:2027 hcl:#cfa07d\n\
\n\
\ecl:hzl\n\
\iyr:2018 hgt:164cm byr:1972 cid:272 pid:990204374\n\
\hcl:#6b5442\n\
\n\
\hgt:155cm pid:791416860 iyr:2015\n\
\cid:278 hcl:#18171d byr:1994 ecl:brn\n\
\eyr:2023\n\
\n\
\iyr:2017 cid:245 eyr:2026 byr:1932 ecl:blu\n\
\hgt:159cm pid:904760812 hcl:#18171d\n\
\n\
\ecl:blu hcl:#6b5442\n\
\iyr:2015 eyr:2023 pid:535891497 hgt:175cm cid:168 byr:1920\n\
\n\
\byr:2000 hcl:#6b5442 hgt:156cm\n\
\pid:765444727 iyr:2012\n\
\ecl:brn\n\
\eyr:2028\n\
\n\
\eyr:2005 pid:9092484649\n\
\byr:2028\n\
\ecl:#5fc7fc hgt:81\n\
\iyr:1988 hcl:8280e1\n\
\n\
\cid:275\n\
\byr:1928 iyr:2010 hcl:#888785 pid:596954301 ecl:brn eyr:2020 hgt:166cm\n\
\n\
\cid:163\n\
\byr:1984 eyr:2027 iyr:2020\n\
\ecl:gry hgt:166cm pid:650001846\n\
\hcl:#602927\n\
\n\
\iyr:1925 eyr:2030\n\
\byr:1985 hcl:#cfa07d ecl:#f16a95 hgt:150cm pid:67853501\n\
\n\
\ecl:gry\n\
\eyr:1949 cid:218 hgt:73cm byr:2004 pid:055108092\n\
\iyr:1961\n\
\n\
\eyr:2024 iyr:2016 pid:133523002\n\
\hgt:62in hcl:#d99c14\n\
\byr:1996 ecl:hzl\n\
\n\
\eyr:2026 iyr:2019 hgt:189cm ecl:brn hcl:#623a2f\n\
\byr:1979 pid:172111665\n\
\n\
\iyr:2017\n\
\eyr:1937 ecl:#bfd0ee\n\
\byr:1964 hcl:#733820\n\
\hgt:169cm pid:33181449\n\
\n\
\eyr:2024 hcl:#6b5442\n\
\iyr:2014\n\
\hgt:68in pid:577055593 ecl:grn byr:1996\n\
\n\
\hcl:z cid:150 eyr:2039 byr:2015 pid:2453663020 ecl:brn\n\
\hgt:154cm\n\
\n\
\hcl:#efcc98 eyr:2022\n\
\ecl:grn hgt:167cm byr:1978 iyr:2010 pid:180446111\n\
\n\
\ecl:gry\n\
\iyr:2020 hgt:152cm pid:#cce9cf eyr:2028\n\
\byr:1942\n\
\hcl:z\n\
\n\
\hcl:#341e13 ecl:brn iyr:2019\n\
\pid:589837530 cid:157 byr:1925 hgt:183cm eyr:2020\n\
\n\
\byr:2009\n\
\pid:179cm hgt:164cm\n\
\iyr:1927 hcl:#cfa07d eyr:2034\n\
\n\
\ecl:oth iyr:2012\n\
\eyr:2028 hcl:#866857 pid:716964854\n\
\byr:1940 cid:113 hgt:193cm\n\
\n\
\byr:1985 iyr:2011 hcl:#866857 pid:454558712 eyr:2025 cid:301\n\
\hgt:62in ecl:blu\n\
\n\
\hcl:#733820 eyr:2025 ecl:amb\n\
\pid:855788635 iyr:2016\n\
\byr:1965\n\
\cid:140 hgt:183cm\n\
\n\
\hcl:#efcc98 cid:326 eyr:1961\n\
\pid:001357810 iyr:1947 ecl:#8abfc8 hgt:75 byr:2012\n\
\n\
\hgt:60cm pid:#e28da4 byr:2014 iyr:2019 eyr:2040 ecl:utc\n\
\n\
\hcl:#733820 eyr:2022 pid:708208638 hgt:162cm cid:326 iyr:2018 ecl:oth byr:1997\n\
\n\
\iyr:1967 byr:2013 pid:8595504787 hgt:73cm ecl:dne\n\
\n\
\pid:808787977 hcl:#18171d\n\
\cid:205 hgt:181cm\n\
\byr:1986\n\
\ecl:gry iyr:2013\n\
\n\
\ecl:dne iyr:2009\n\
\byr:2027\n\
\hgt:188in hcl:#c0946f\n\
\pid:585147305 eyr:2024\n\
\n\
\hcl:#733820 iyr:2019\n\
\eyr:2020\n\
\hgt:190cm\n\
\pid:042907748 ecl:grn byr:1920\n\
\n\
\ecl:#603ad1\n\
\eyr:2026\n\
\hcl:33f9f8\n\
\pid:862887360 hgt:156in byr:1993\n\
\iyr:2013\n\
\n\
\ecl:oth eyr:2030 byr:1960\n\
\hcl:#a97842 cid:285\n\
\hgt:60in pid:655974048 iyr:2016\n\
\n\
\iyr:2030\n\
\hgt:143\n\
\pid:65806846 byr:1948 hcl:#72a0d3 eyr:1934 ecl:#7cd402\n\
\n\
\hcl:z pid:#0f7c0a iyr:2012 hgt:161cm\n\
\byr:2022 eyr:1937\n\
\n\
\hcl:#fffffd ecl:hzl\n\
\hgt:191cm byr:1935 iyr:2015 cid:240 eyr:2030 pid:778049989\n\
\n\
\ecl:amb iyr:2011 hcl:#e196f6 pid:231470794 eyr:2026 hgt:179in byr:1979\n\
\n\
\ecl:oth hcl:#6b5442 pid:181cm hgt:72cm\n\
\eyr:2040 iyr:2010\n\
\n\
\iyr:2016 eyr:2026 pid:113617276\n\
\cid:117 hgt:176cm ecl:grn\n\
\hcl:#c5b999\n\
\n\
\iyr:2016 byr:1941\n\
\pid:846760253 hgt:60cm\n\
\hcl:#7d3b0c ecl:zzz\n\
\eyr:1972\n\
\n\
\eyr:2023 hcl:#623a2f\n\
\cid:103 pid:476193829 hgt:181cm ecl:oth byr:1997\n\
\iyr:2014\n\
\n\
\ecl:#b64a07 hcl:7bb40c byr:2028 eyr:2039 pid:#e2ba33 hgt:189 iyr:1940\n\
\n\
\pid:#3ecfd8 hcl:#7d3b0c iyr:2014 ecl:#30a5e7 hgt:73cm byr:1954\n\
\n\
\ecl:dne\n\
\byr:2011 pid:512088455\n\
\hcl:#18171d eyr:2023\n\
\iyr:2024\n\
\n\
\byr:1996 eyr:2026 pid:268556486 ecl:brn\n\
\hgt:150cm\n\
\iyr:2013 hcl:#7d3b0c\n\
\n\
\iyr:2014\n\
\ecl:grn pid:222910621 hcl:#602927\n\
\eyr:2030 hgt:155cm\n\
\n\
\pid:530689228 byr:1938\n\
\iyr:2015\n\
\hgt:185cm ecl:hzl eyr:2022 hcl:#866857\n\
\n\
\hcl:#b6652a byr:2028 iyr:2018 cid:150 ecl:lzr pid:706073193 hgt:169cm\n\
\n\
\hgt:171cm ecl:gry hcl:#6b5442 byr:1953\n\
\iyr:2011 pid:622763802 eyr:2026\n\
\n\
\eyr:2032 hgt:137\n\
\pid:5033763648\n\
\byr:1925 ecl:hzl hcl:#623a2f iyr:2024\n\
\n\
\byr:1930 pid:6999766453 ecl:#3e3e07\n\
\hcl:#602927 iyr:2010 eyr:2039\n\
\hgt:160cm\n\
\n\
\hgt:122 ecl:amb pid:105302121 iyr:2017\n\
\hcl:#733820\n\
\eyr:2027 byr:1955\n\
\n\
\hcl:#95f96b\n\
\hgt:193cm iyr:2020 pid:719337690\n\
\byr:1971\n\
\ecl:brn eyr:2024"
