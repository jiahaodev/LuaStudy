--
-- Created by IntelliJ IDEA.
-- User: JiahaoWu
-- Date: 2017/5/9
-- Time: 11:18
-- To change this template use File | Settings | File Templates.
--


--第二章：类型和值

--type函数
print(type("Hello world"));
print(type(10 * 4.4));
print(type(print));
print(type(type));
print(type(true));
print(type(nil));
print(type(type(x))); --》 always return "string"

a = "one string"
b = string.gsub(a, "one", "another");
print(a)
print(b)


page = [[
<html>
<head>
<title> An HTML Page</title>
</head>
<body>
<a href="http://www.baidu.com">Lua</a>
</body>
</html>
]]
a = io.read()
print(a)
io.write(page)

page = [==[
--[[niha

--]]
]==]


--[==[
文字注释
--[[niha
文字注释内容
--]]
]==]


print("10" + 1);
print("10 + 1");
print("-5.33e-10" * "2");
--print("hello" + 1);

print(10 .. 20)

--line = io.read()
--n = tonumber(line)
--if n == nil then
--    error(line .. " is not a valid number");
--else
--    print(n * 2);
--end

a = "hello"
print(#a)
print(#"goog\0bye")


--table
a = {}
k = "x"
a[k] = 10
a[20] = "great"
print(a["x"])
k = 20
print(a[k])
a["x"] = a["x"] + 1
print(a["x"])

a = {}
a["x"] = 10
b = a
print(b["x"])
b["x"] = 20
print(a["x"])
a = nil
b = nil

a = {}
for i = 1, 10 do
    a[i] = i * 2
end
print(a[9])
a["x"] = 10
for k, v in pairs(a) do
    print("k:" .. k .. "; v: " .. v)
end

a = {}
x = "y"
a[x] = 10
print(a[x])
print(a.x)
print(a.y)

a = {}
for i = 1, 10 do
    a[i] = i * 2
end

a[5] = nil
a["x"] = "x";
a["y"] = "y";
print("a的长度：" .. #a)
for i = 1, #a do
    print(a[i])
end

c = {}
for i = 1, 10 do
    c[i] = i;
end
c[100] = "x"
c["x"] = 10;
print("c长度： ".. #c);
print("c的最大长度  "..table.maxn(c));



