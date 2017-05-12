--
-- Created by IntelliJ IDEA.
-- User: JiahaoWu
-- Date: 2017/5/9
-- Time: 16:33
-- To change this template use File | Settings | File Templates.
--

--第4章：语句


 x  =  10
local i = 1
while i <= x do
    local x = i*2
    print(x)
    i = i + 1
end

if i > 20 then
    local x
    x = 20
    print(x+2)
else
    print(x)
end

print(x)


--do
--    local s2 = 2*a;
--    local d = (b^2 - 4*a*c)^(1/2)
--end


foo = {x=1,y=1 }
local fok = foo
fok.x = 100
print(foo.x,fok.x)



a = 100

--控制结构
if a < 0 then
    a = 0
end

--if a < b then
--    return a
--else
--    return b
--end



if a then
    print "not null"
end
 a = nil
if not a then
    print("null")
end

--if op == "+" then
--    r = a + b;
--elseif op == "-" then
--    r  = a - b;
--else
--    error("invalid operation")
--end

a = {1,2,3,nil,5,6 }
a[10] = 10;
a["x"]  = "x";
a[20] = 11;

local i =1
--while a[i] do
--    print(a[i])
--    i  = i + 1;
--end
print("------------")
for i=1,#a do
    print(a[i])
end
print("------------")
for k,v in ipairs(a) do
    print(a[k])
end
print("------------")

for k,v in pairs(a) do
    print(a[k])
end
print("------------")

--for  i=1 ,table.maxn(a) do
--    print(a[i])
--end

local index = 1
repeat
    line = a[index]
    record = line
until line~= nil
print(record);
print("--------------------")
--local str = "Hello , ben jie ming";
--for word in string.gmatch(str,"%a+") do
--    print(word)
--end

days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
revDays = {}
for k,v in pairs(days) do
    revDays[v] = k;
    print(v.." : "..revDays[v]);
end

for i,v in pairs(revDays) do
    print (v);
end


--break and return
function foo()
    do
        local a =11;
    return
    end
    local b = 100;
end

















