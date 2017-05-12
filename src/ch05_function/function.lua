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
print(unpack({10,20,30,40}))
a,b= unpack{10,20,30,40 }
print(a,b)


f = string.find
a = {"hello","ll" }

print(f(unpack(a)))

a = {"hello","ll"}
s,e = string.find(unpack(a))
print(s,e);




--变长参数
function add(...)
  local s = 0
  for i,v in pairs({...}) do
    s = s + v
  end
  return s
end

print(add(3,4,5))


function foo1(...)
  print("calling foo:",...)
  -- return foo(...)
end

foo1(1,2,3)


function fwrite(fmt,...)
  return io.write(string.format(fmt,...))
end

fwrite("%d%d",4,5)


function selectTest(...)
  for i=1,select('#',...) do
    local arg = select(i,...)
    print("i:",arg)
  end
end

selectTest(1,2,3,4)



--具名实参
function Window(options)
  --检测必要参数
  if type(options.title) ~= "string" then
    error("no title")
  elseif type(options.width) ~= "number" then
    error("no width")
  elseif type(options.height) ~= "number" then
    error("no height")
  end
  
--  --其他参数可选
--  Window(options.title,
--  options.x or 0,
--  options.y or 0,
--  options.width, options.height,
--  options.background or "white",
--  options.border or false)
  
end







