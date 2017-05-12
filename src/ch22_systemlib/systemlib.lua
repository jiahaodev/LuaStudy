--第22章 : 操作系统

--time 

--loadfile("src/utils/util.lua") ()

function printTable(tab)
  local isNil = true
  for i,v in ipairs(tab) do
    print(i.." : "..v)
    isNil = false
  end

  if isNil then
    print("pairs")
    for k,v in pairs(tab) do
      print(tostring(k).." : "..tostring(v))
    end
  end
end


local result = print(os.time())
print(os.time{year=1970,month=1,day=1,hour=0})

tab = os.date("*t", os.time())
printTable(tab)

print(os.date("%a %A %b %B %c %d %H %I %j %m %M %p"))
print()
print(os.date("%S %w %x %X %y %Y %%"))


print(os.date("%Y/%m/%d"))

--CPU时钟
local x = os.clock()
local s = 0
for i=1,1000 do 
  s = s + i
--  print("i: "..i.." ; ".." s: "..s)
end
print(string.format("elapsed time:%.2f\n",os.clock()-x))

print("get difftime")
print(os.difftime(os.clock(),x))


--其他系统调用
print(os.getenv("JAVA_HOME"))

function createDir(dirname)
  local pathPre = "D://WorkSpace/Lua/LuaBook/src/test/"
  os.execute("mkdir "..(pathPre..dirname))
end

--createDir("ok")