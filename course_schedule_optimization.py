from gurobipy import *

name,w,s,e,f = multidict({
            ("台語諺語與歷史文化")   :[1,7,8,6],
            ("x人、動物與倫理")       :[1,7,8,8],
            ("講台語看語言佮社會")   :[1,7,8,0],
            ("歷史畫賞鑑")           :[2,5,6,0],
            ("中國文學導論")         :[2,3,4,0],
            ("短篇小說選讀")         :[2,5,6,0],
            ("先秦兩漢儒家思想")     :[2,5,6,0],
            ("考古發現與歷史新貌")   :[2,5,6,6],
            ("實用中文及寫作")       :[2,1,2,0],
            ("女性文學選讀")         :[3,3,4,0],
            ("先秦兩漢儒家思想")     :[3,3,4,0],
            ("台灣傳統戲曲賞析")     :[3,5,6,0],
            ("台灣傳統戲曲賞析")     :[3,7,8,0],
            ("人、動物與倫理")       :[3,3,4,0],
            ("戲劇與小說")           :[3,7,8,0],
            ("戲劇賞析")             :[3,3,4,0],
            ("古蹟與文化")           :[3,3,4,0],
            ("流行樂賞析與實務")     :[4,3,4,1],
            ("劇場表演與創意")       :[4,5,6,0],
            ("短篇小說選讀")         :[4,5,6,0],
            ("劇場表演與創意")       :[4,7,8,0],
            ("客家文化導論")         :[4,3,4,0],
            ("臺灣古典文學")         :[4,5,6,0],
            ("先秦兩漢儒家思想")     :[4,3,4,0],
            ("女性文學選讀")         :[4,3,4,0],
            ("中國哲學概論")         :[4,5,6,0],
            ("戲劇製作")             :[5,7,8,0],
            ("歷史通論")             :[5,7,8,0]})

WEEK = 5
LESSONS_PER_DAY = 9

x = {}
lessons_period = {}
m = Model("course_schedule")

for n in name:
    x[n] = m.addVar(vtype=GRB.BINARY, name="x_%s"%n)
    
for i in range(1, WEEK+1):
    for j in range(1, LESSONS_PER_DAY+1):
        if i == 1 and (j == 5 or j == 6 or j == 7):
            # 製造資訊
            lessons_period[i, j] = m.addVar(vtype=GRB.INTEGER, ub=0, name="lessons_period_%d_%d"%(int(i), int(j)))
        elif i == 3 and (j == 6 or j == 7 or j == 8):
            # 訊號與系統
            lessons_period[i, j] = m.addVar(vtype=GRB.INTEGER, ub=0, name="lessons_period_%d_%d"%(int(i), int(j)))
        elif i == 4 and (j == 7 or j == 8 or j == 9):
            # 程式語言
            lessons_period[i, j] = m.addVar(vtype=GRB.INTEGER, ub=0, name="lessons_period_%d_%d"%(int(i), int(j)))
        elif i == 5 and (j == 2 or j == 3 or j == 4):
            # 編譯系統
            lessons_period[i, j] = m.addVar(vtype=GRB.INTEGER, ub=0, name="lessons_period_%d_%d"%(int(i), int(j)))
        else:
            lessons_period[i, j] = m.addVar(vtype=GRB.INTEGER, ub=1, name="lessons_period_%d_%d"%(int(i), int(j)))

m.update()

m.setObjective(quicksum(x[n] * f[n] for n in name), GRB.MAXIMIZE)

m.addConstr(quicksum(x[n] for n in name) == 2)
for n in name:
    print("%d, %d, %d"%(w[n], s[n], e[n]))

for i in range(1, WEEK+1):
    for j in range(1, LESSONS_PER_DAY+1):
        m.addConstr(quicksum(x[n] for n in name if w[n] == i and (s[n] == j or e[n] == j)) == lessons_period[i, j])

m.optimize()
m.write("course_schedule.lp")

if m.status == GRB.Status.OPTIMAL:
    print ("Optimal objective value is %g"%m.objVal)
    solution = m.getAttr("x", x)
    for n in name :
        if solution[n] == 1:
            print("%s"%n)

    solution_p = m.getAttr("x", lessons_period)
    for i in range(1, WEEK+1):
        for j in range(1, LESSONS_PER_DAY+1):
            if solution_p[i, j] == 1:
                print("%d %d"%(i, j))