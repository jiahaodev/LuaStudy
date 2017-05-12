--
--第8章   编译、执行 与错误

i = 0
f = loadstring("i=i+1")
f()
print(i)
f()
print(i)
f()
print(i)


print("ok")

print("enter your expression")
local l = 12312;
local func = assert(loadstring("return ".. l))
print("the value of your expression is "..func())


print ("enter function to be plotted (with variable 'x')")
local l = 5
local f = assert(loadstring("local x = ...; return " .. l))
for i=1,20 do
  print(string.rep("*",f(i)))
end


--f = loadfile("src/test/foo1.lua")
--
--print(foo1)
--f()
--foo1("foo1 ok test")

print("-------------")

print(package.loadlib("a","b"))




--错误处理
n = assert(tonumber("22"),"invalid input")
print(n)


local file,msg;

function funTest(name)
  print("enter a file name ")
  if not name then
    return
  end
  file,name = io.open(name,"r")
  if not file then
    print(file,msg)
  else
    print(file,msg)
  end
end

funTest("src/test/foo1.lua")

print(io.open("src/test/foo11.lua","r"))
--file = assert(io.open("src/test/foo11.lua","r"))

print("1"+1)

print("\n")
local status,err = pcall(function()
                             error(121)
                          end)
print(status,err)


print("进入 pcall")
function foo(x,y)
    print("get params"..x..":"..y)
    if x > y then
        error("input error")
    end
    --正常代码
    print("That's no problem")
end

if pcall(foo,2,1) then
    print("true")
else
    print("false")
end





--错误消息 与 追溯
--local status,err = pcall(function() a = "a" +1 end)
--print(status,err)
--
--print("continue")
--
--local status,err = pcall(function() error("my error") end)
--print(status,err)



--function foo(str)
--  if type(str) ~= "string" then
--    print("It is terrible")
--    print(debug.traceback())
--    error("string expected ")
--  end
--  print("It is ok")
--end
--
--foo(1)





































