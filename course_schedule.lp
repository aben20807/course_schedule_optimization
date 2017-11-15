\ Model course_schedule
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  6 x_台語諺語與歷史文化 + 8 x_x人、動物與倫理
   + 6 x_考古發現與歷史新貌 + x_流行樂賞析與實務
   + 0 lessons_period_0_0 + 0 lessons_period_0_1 + 0 lessons_period_0_2
   + 0 lessons_period_0_3 + 0 lessons_period_0_4 + 0 lessons_period_0_5
   + 0 lessons_period_0_6 + 0 lessons_period_0_7 + 0 lessons_period_0_8
   + 0 lessons_period_1_0 + 0 lessons_period_1_1 + 0 lessons_period_1_2
   + 0 lessons_period_1_3 + 0 lessons_period_1_4 + 0 lessons_period_1_5
   + 0 lessons_period_1_6 + 0 lessons_period_1_7 + 0 lessons_period_1_8
   + 0 lessons_period_2_0 + 0 lessons_period_2_1 + 0 lessons_period_2_2
   + 0 lessons_period_2_3 + 0 lessons_period_2_4 + 0 lessons_period_2_5
   + 0 lessons_period_2_6 + 0 lessons_period_2_7 + 0 lessons_period_2_8
   + 0 lessons_period_3_0 + 0 lessons_period_3_1 + 0 lessons_period_3_2
   + 0 lessons_period_3_3 + 0 lessons_period_3_4 + 0 lessons_period_3_5
   + 0 lessons_period_3_6 + 0 lessons_period_3_7 + 0 lessons_period_3_8
   + 0 lessons_period_4_0 + 0 lessons_period_4_1 + 0 lessons_period_4_2
   + 0 lessons_period_4_3 + 0 lessons_period_4_4 + 0 lessons_period_4_5
   + 0 lessons_period_4_6 + 0 lessons_period_4_7 + 0 lessons_period_4_8
Subject To
 R0: x_台語諺語與歷史文化 + x_x人、動物與倫理
   + x_講台語看語言佮社會 + x_歷史畫賞鑑
   + x_中國文學導論 + x_短篇小說選讀
   + x_先秦兩漢儒家思想 + x_考古發現與歷史新貌
   + x_實用中文及寫作 + x_女性文學選讀
   + x_台灣傳統戲曲賞析 + x_人、動物與倫理
   + x_戲劇與小說 + x_戲劇賞析 + x_古蹟與文化
   + x_流行樂賞析與實務 + x_劇場表演與創意
   + x_客家文化導論 + x_臺灣古典文學 + x_中國哲學概論
   + x_戲劇製作 + x_歷史通論 = 3
Bounds
 lessons_period_0_0 <= 1
 lessons_period_0_1 <= 1
 lessons_period_0_2 <= 1
 lessons_period_0_3 <= 1
 lessons_period_0_4 <= 1
 lessons_period_0_5 <= 1
 lessons_period_0_6 <= 1
 lessons_period_0_7 <= 1
 lessons_period_0_8 <= 1
 lessons_period_1_0 <= 1
 lessons_period_1_1 <= 1
 lessons_period_1_2 <= 1
 lessons_period_1_3 <= 1
 lessons_period_1_4 <= 1
 lessons_period_1_5 <= 1
 lessons_period_1_6 <= 1
 lessons_period_1_7 <= 1
 lessons_period_1_8 <= 1
 lessons_period_2_0 <= 1
 lessons_period_2_1 <= 1
 lessons_period_2_2 <= 1
 lessons_period_2_3 <= 1
 lessons_period_2_4 <= 1
 lessons_period_2_5 <= 1
 lessons_period_2_6 <= 1
 lessons_period_2_7 <= 1
 lessons_period_2_8 <= 1
 lessons_period_3_0 <= 1
 lessons_period_3_1 <= 1
 lessons_period_3_2 <= 1
 lessons_period_3_3 <= 1
 lessons_period_3_4 <= 1
 lessons_period_3_5 <= 1
 lessons_period_3_6 <= 1
 lessons_period_3_7 <= 1
 lessons_period_3_8 <= 1
 lessons_period_4_0 <= 1
 lessons_period_4_1 <= 1
 lessons_period_4_2 <= 1
 lessons_period_4_3 <= 1
 lessons_period_4_4 <= 1
 lessons_period_4_5 <= 1
 lessons_period_4_6 <= 1
 lessons_period_4_7 <= 1
 lessons_period_4_8 <= 1
Binaries
 x_台語諺語與歷史文化 x_x人、動物與倫理
 x_講台語看語言佮社會 x_歷史畫賞鑑 x_中國文學導論
 x_短篇小說選讀 x_先秦兩漢儒家思想
 x_考古發現與歷史新貌 x_實用中文及寫作 x_女性文學選讀
 x_台灣傳統戲曲賞析 x_人、動物與倫理 x_戲劇與小說
 x_戲劇賞析 x_古蹟與文化 x_流行樂賞析與實務
 x_劇場表演與創意 x_客家文化導論 x_臺灣古典文學
 x_中國哲學概論 x_戲劇製作 x_歷史通論
Generals
 lessons_period_0_0 lessons_period_0_1 lessons_period_0_2
 lessons_period_0_3 lessons_period_0_4 lessons_period_0_5
 lessons_period_0_6 lessons_period_0_7 lessons_period_0_8
 lessons_period_1_0 lessons_period_1_1 lessons_period_1_2
 lessons_period_1_3 lessons_period_1_4 lessons_period_1_5
 lessons_period_1_6 lessons_period_1_7 lessons_period_1_8
 lessons_period_2_0 lessons_period_2_1 lessons_period_2_2
 lessons_period_2_3 lessons_period_2_4 lessons_period_2_5
 lessons_period_2_6 lessons_period_2_7 lessons_period_2_8
 lessons_period_3_0 lessons_period_3_1 lessons_period_3_2
 lessons_period_3_3 lessons_period_3_4 lessons_period_3_5
 lessons_period_3_6 lessons_period_3_7 lessons_period_3_8
 lessons_period_4_0 lessons_period_4_1 lessons_period_4_2
 lessons_period_4_3 lessons_period_4_4 lessons_period_4_5
 lessons_period_4_6 lessons_period_4_7 lessons_period_4_8
End
