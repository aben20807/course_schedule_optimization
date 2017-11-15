# -*- coding: utf-8 -*-
import requests
from bs4 import BeautifulSoup
res = requests.get("http://course-query.acad.ncku.edu.tw/qry/qry002.php?syear=0106&sem=2&college_no=C&dept_no=A9&clweek=0&co_name=&lang=zh_tw")
soup = BeautifulSoup(res.content, "html.parser")

f = open('courseA9.csv','w')
i = 0
s = ""
isHumanities = False
for eachSoup in soup.select('td'):
    tmp = eachSoup.text.strip()
    if tmp == "人文學":
        isHumanities = True
        s = str(i) + ", "
    if tmp.startswith("104") or tmp.startswith("哲學思考系列"): # skip 哲學與藝術, 公民與歷史, 哲學思考系列(0.5學分)
        isHumanities = False
        s = str(i) + ", "
    if tmp == "否" and isHumanities: # end of each course
        # print (s)
        f.write(s + '\n')
        i = i+1
        isHumanities = False
    if isHumanities:
        if len(tmp) == 0 or\
        tmp == "人文學" or\
        tmp == "N" or\
        tmp == "必修" or\
        tmp == "0":
            # skip spaces, 類別, 英語授課, 選必修, 已選課人數
            continue
        else:
            s += tmp + ", "
f.close()
