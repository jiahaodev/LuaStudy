--and or

print(true and false)
print(false or true)

x= x or 10
print(x)
x= x or 20
print(x)
print("Hello".."lua")


--表
days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
print(days[4])

--tab = {sin(1),sin(2),sin(3),sin(4),sin(5),sin(6),sin(7),sin(8)}

a = {x=0,y=1}
print(a.x,a.y,a[x],a["y"])
w = {x=0,y=0,label="console"}
w[1] = "another field"
x={}
x.f = w
print(w['x'])
print(w[1])
print(x.f[1])
w.x =nil

--使用构造函数
--list =nil
--for line in io.lines() do
--  list = {next = list,value = line}
--end
--
--li = list
--while li do
--  print(li.value)
--  li = li.next
--end

--混合使用列表风格和record风格进行初始化(须注意)
--table的自然索引1，2，3从没有人为指定key的地方开始
polyline = {color="blue",thickness=2,npoints=4,
            {x=0,y=0},  -- index 1
            {x=-10,y=0},-- index 2
            {x=-10,y=1},
            {x=0,y=1}
}
print(polyline[2].x,polyline[2].y)

--
opnames = {["+"]="add",["-"]="sub",["*"]="mul",ok="div"}
i=20;
s="-";
a={[i+0]=s,[i+1]=s..s,[i+2]=s..s..s}
print(opnames[s])
print(opnames["-"])
print(a[22])


tab1 = {["1"]="ok","ok2","ok3",["4"]="ok4","ok5","ok6"}
print(tab1[1])
print(tab1[4])
print("--------------")
for k,v in pairs(tab1) do
    print(k.."  -  "..v)
end
print("--------------")
for k,v in ipairs(tab1) do
    print(k.."  -  "..v)
end

tab2 = {x=0,y=0}
tab3={["x"]=0,["y"]=0}
--tab4={"x"=0,"y"=0}

















































