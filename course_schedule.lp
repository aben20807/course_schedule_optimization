\ Model course_schedule
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  6 x_台語諺語與歷史文化 + 8 x_x人、動物與倫理
   + 6 x_考古發現與歷史新貌 + x_流行樂賞析與實務
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
   + x_戲劇製作 + x_歷史通論 = 2
 R1: - lessons_period_1_1 = 0
 R2: - lessons_period_1_2 = 0
 R3: - lessons_period_1_3 = 0
 R4: - lessons_period_1_4 = 0
 R5: - lessons_period_1_5 = 0
 R6: - lessons_period_1_6 = 0
 R7: x_台語諺語與歷史文化 + x_x人、動物與倫理
   + x_講台語看語言佮社會 - lessons_period_1_7 = 0
 R8: x_台語諺語與歷史文化 + x_x人、動物與倫理
   + x_講台語看語言佮社會 - lessons_period_1_8 = 0
 R9: - lessons_period_1_9 = 0
 R10: x_實用中文及寫作 - lessons_period_2_1 = 0
 R11: x_實用中文及寫作 - lessons_period_2_2 = 0
 R12: x_中國文學導論 - lessons_period_2_3 = 0
 R13: x_中國文學導論 - lessons_period_2_4 = 0
 R14: x_歷史畫賞鑑 + x_考古發現與歷史新貌
   - lessons_period_2_5 = 0
 R15: x_歷史畫賞鑑 + x_考古發現與歷史新貌
   - lessons_period_2_6 = 0
 R16: - lessons_period_2_7 = 0
 R17: - lessons_period_2_8 = 0
 R18: - lessons_period_2_9 = 0
 R19: - lessons_period_3_1 = 0
 R20: - lessons_period_3_2 = 0
 R21: x_人、動物與倫理 + x_戲劇賞析 + x_古蹟與文化
   - lessons_period_3_3 = 0
 R22: x_人、動物與倫理 + x_戲劇賞析 + x_古蹟與文化
   - lessons_period_3_4 = 0
 R23: - lessons_period_3_5 = 0
 R24: - lessons_period_3_6 = 0
 R25: x_台灣傳統戲曲賞析 + x_戲劇與小說 - lessons_period_3_7
   = 0
 R26: x_台灣傳統戲曲賞析 + x_戲劇與小說 - lessons_period_3_8
   = 0
 R27: - lessons_period_3_9 = 0
 R28: - lessons_period_4_1 = 0
 R29: - lessons_period_4_2 = 0
 R30: x_先秦兩漢儒家思想 + x_女性文學選讀
   + x_流行樂賞析與實務 + x_客家文化導論 - lessons_period_4_3
   = 0
 R31: x_先秦兩漢儒家思想 + x_女性文學選讀
   + x_流行樂賞析與實務 + x_客家文化導論 - lessons_period_4_4
   = 0
 R32: x_短篇小說選讀 + x_臺灣古典文學 + x_中國哲學概論
   - lessons_period_4_5 = 0
 R33: x_短篇小說選讀 + x_臺灣古典文學 + x_中國哲學概論
   - lessons_period_4_6 = 0
 R34: x_劇場表演與創意 - lessons_period_4_7 = 0
 R35: x_劇場表演與創意 - lessons_period_4_8 = 0
 R36: - lessons_period_4_9 = 0
 R37: - lessons_period_5_1 = 0
 R38: - lessons_period_5_2 = 0
 R39: - lessons_period_5_3 = 0
 R40: - lessons_period_5_4 = 0
 R41: - lessons_period_5_5 = 0
 R42: - lessons_period_5_6 = 0
 R43: x_戲劇製作 + x_歷史通論 - lessons_period_5_7 = 0
 R44: x_戲劇製作 + x_歷史通論 - lessons_period_5_8 = 0
 R45: - lessons_period_5_9 = 0
Bounds
 lessons_period_1_1 <= 1
 lessons_period_1_2 <= 1
 lessons_period_1_3 <= 1
 lessons_period_1_4 <= 1
 lessons_period_1_5 = 0
 lessons_period_1_6 = 0
 lessons_period_1_7 = 0
 lessons_period_1_8 <= 1
 lessons_period_1_9 <= 1
 lessons_period_2_1 <= 1
 lessons_period_2_2 <= 1
 lessons_period_2_3 <= 1
 lessons_period_2_4 <= 1
 lessons_period_2_5 <= 1
 lessons_period_2_6 <= 1
 lessons_period_2_7 <= 1
 lessons_period_2_8 <= 1
 lessons_period_2_9 <= 1
 lessons_period_3_1 <= 1
 lessons_period_3_2 <= 1
 lessons_period_3_3 <= 1
 lessons_period_3_4 <= 1
 lessons_period_3_5 <= 1
 lessons_period_3_6 = 0
 lessons_period_3_7 = 0
 lessons_period_3_8 = 0
 lessons_period_3_9 <= 1
 lessons_period_4_1 <= 1
 lessons_period_4_2 <= 1
 lessons_period_4_3 <= 1
 lessons_period_4_4 <= 1
 lessons_period_4_5 <= 1
 lessons_period_4_6 <= 1
 lessons_period_4_7 = 0
 lessons_period_4_8 = 0
 lessons_period_4_9 = 0
 lessons_period_5_1 <= 1
 lessons_period_5_2 = 0
 lessons_period_5_3 = 0
 lessons_period_5_4 = 0
 lessons_period_5_5 <= 1
 lessons_period_5_6 <= 1
 lessons_period_5_7 <= 1
 lessons_period_5_8 <= 1
 lessons_period_5_9 <= 1
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
 lessons_period_1_1 lessons_period_1_2 lessons_period_1_3
 lessons_period_1_4 lessons_period_1_5 lessons_period_1_6
 lessons_period_1_7 lessons_period_1_8 lessons_period_1_9
 lessons_period_2_1 lessons_period_2_2 lessons_period_2_3
 lessons_period_2_4 lessons_period_2_5 lessons_period_2_6
 lessons_period_2_7 lessons_period_2_8 lessons_period_2_9
 lessons_period_3_1 lessons_period_3_2 lessons_period_3_3
 lessons_period_3_4 lessons_period_3_5 lessons_period_3_6
 lessons_period_3_7 lessons_period_3_8 lessons_period_3_9
 lessons_period_4_1 lessons_period_4_2 lessons_period_4_3
 lessons_period_4_4 lessons_period_4_5 lessons_period_4_6
 lessons_period_4_7 lessons_period_4_8 lessons_period_4_9
 lessons_period_5_1 lessons_period_5_2 lessons_period_5_3
 lessons_period_5_4 lessons_period_5_5 lessons_period_5_6
 lessons_period_5_7 lessons_period_5_8 lessons_period_5_9
End
