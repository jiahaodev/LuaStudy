--
-- Created by IntelliJ IDEA.
-- User: JiahaoWu
-- Date: 2017/5/9
-- Time: 17:53
-- To change this template use File | Settings | File Templates.
--

--第5章：函数

print(8 * 9, 9 / 8)
a = math.sin(3) + math.cos(10)
print(os.date())

local str = "Hello"
local tab = { x = 1, y = 2 }
print "Hello"
print(str)
print(tab)




--多返回值
s, e = string.find("hello Lua users", "Lua");
print(s, e)

function maximum(a)
    local mi = 1;
    local m = a[mi];
    for i, val in ipairs(a) do
        if val > m then
            mi = i; m = val;
        end
    end
    return m, mi;
end

print(maximum({ 8, 10, 25, 12, 5 }))


----unpack
--print(unpack({10,20,30,40}))
--a,b= unpack{10,20,30,40 }
--print(a,b)


f = string.find
a = {"hello","ll" }

print(f(unpack(a)))

a = {"hello","ll"}
s,e = string.find(unpack(a))
print("输出结果")
print(s,e);









