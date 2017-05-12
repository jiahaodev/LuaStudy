--
-- Created by IntelliJ IDEA.
-- User: JiahaoWu
-- Date: 2017/5/9
-- Time: 15:07
-- To change this template use File | Settings | File Templates.
--
--第3章： 表达式

x = math.pi
print(x - x%0.01)

days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
print(days[4])

w = {x=0,y=0,label="console" }
x = {math.sin(0),math.sin(1),math.sin(2) }
w [1] = "another field"
x.f = w
print(w["x"])
print(w[1])
print(x.f[1])
w.x = nil
print(w.x)


--链表式写法

tab = {10,20,30,40,50}
list = nil
for k,v in ipairs(tab) do
    list = { pre = list,value = v}
end

local l = list
while l do
    print(l.value)
    l = l.pre
end


--混合风格
polyline = {
    color = "blue",thickness = 2,npoints = 4,
    {x=0,y=1},
    {x=-10,y=2},
    {x=-10,y=3};
    {x=4,y=4}
}
print(polyline[2].y)
print(polyline[4].y)


--用表达式初始化索引值
opnames = {["+"]="add",["-"]="sub",["*"]="mul",["/"]="div"};
i = 20; s = "-";
a = {[i+0]=s,[i+1] =s..s};
print(opnames[s])
print(a[21])











