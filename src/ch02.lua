print("Lua")

--string
a="one string"
b= string.gsub(a,"one","another")
print(a,b)
print("one line\nnext line\n\"in quotes\",'in quotes'")
print('a backslash inside quotes:\'\\\'')
print("a simpler way:'\\'")

--Lua会自动在string和number之间转换
print("10"+1)
print("10"+"1")
--print("error"+1)
print(10 .. 20)

--字符串  与 数字 的互转
--line = io.read()
--n = tonumber(line)
--if n==nil then
--  error(line.." is not a valid number")
--else
--  print(n*2)
--end
print(tostring(10)=="10")
print(10 .. "" == "10")
n="10"
print(n=="11") 

