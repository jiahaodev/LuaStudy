--第6章，再论函数
function funa()
  testNum = 6
end

function funb()
  --调用函数funa(),使testNum=6
  --（如果不调用funa（），则testNum = nil ）
  funa()
  print(testNum)
end

funb()

func = function()
  print("func")
end

func()

network = {
  {name = "grauna", IP = "210.26.30.34"},
  {name = "arraial", IP = "210.26.30.23"},
  {name = "lua", IP = "210.26.23.12"},
  {name = "derain", IP = "210.26.23.20"},
}

table.sort(network,function(a,b)
  return (a.name < b.name)
end)

for i=1,#network  do
  print(network[i].name .." - "..network[i].IP)
end


--闭包
names = {"Peter","Paul","Mary"}
grades = {Mary = 10,Paul = 7,Peter = 8}

function sortbygrade(names,grades)
  table.sort(names,function (n1,n2)
    return grades[n1] > grades[n2]
  end)
  for i=1,#names do
    print(names[i])
  end
end

sortbygrade(names,grades)

function add(i)
  i = i+1
end

function newCounter()
  local i = 0
  return function()
    i = i + 1
    return i
  end
end

c1 = newCounter()   -- > 获取返回的函数
c2 = newCounter()
print("type of return:"..type(c1))
print(c1())
print(c2())
print(c1())
print(c2())
print(c2())
print("************")

print(type(type))
--
--表和函数放在一起
--Lib = {}
--Lib.foo = function(x,y) return x+y end
--Lib.goo = function(x,y) return x-y end

--使用表构造函数
--Lib = {
--  foo = function(x,y) return x+y end,
--  goo = function(x,y) return x-y end
--}
--print(Lib.foo(1,2))

Lib = {}
function Lib.foo (x,y)
  return x + y
end
function Lib.goo (x,y)
  return x - y
end

print(Lib.foo(1,2))

local fact
fact = function (n)
  if n == 0 then
    return 1
  else
    return n*fact(n-1) -- buggy
  end
end

print(fact(6))

function foo(n)
  if n > 0 then
    return foo(n-1)
  end
end

foo(100)
print("end")



function test()
  return "ok"
end

function test1()
  return test()
end


print(test1())

-- 用闭包实现迭代器的功能
function values(t)
  local i = 0
  return function()
    i = i + 1
    return t[i]
  end
end

data = {10,20,30,40,50,60,70,80,90}

iter = values(data)

while true do
  local element = iter()  --获取iter（）的返回值
  if element == nil then
    break
  end
  print(element)
end

print("c1:"..c1())











































































































































































































