--第20章  字符串库

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





local tab = {"b","AC","f","D"};

local result;

local str = "aAcD";
result = string.upper("aAcD");
result = string.lower(str)

result = string.sub(str,-2)

result = string.char(97)
i=99;
result = string.char(i,i+1,i+2)

result = string.byte("abc")
result = string.byte("abc",2)
result = string.byte("abc",1,3) --在5.3中运行正常

result = string.format("pi = %.4f",math.pi)

d = 5; m =11;y=1990;
result = string.format("%02d/%02d/%02d",d,m,y)
tag, title = "h1","a title"
result = string.format("<%s>%s</%s>",tag,title,tag)

print(result) 


--忽略大小写的排序
function sortIgnoreCase(tab)
  table.sort(tab,function(a,b)
    return string.lower(a) < string.lower(b)
  end)
end

sortIgnoreCase(tab)
printTable(tab)



--20.2 模式匹配函数
 print("\n模式匹配函数")

 s = "hello world\nThat's ok\n You know"
 i,j = string.find(s,"hello")
 print(string.sub(s,i,j))
 print(string.find(s,"l"))
 print(string.sub(s,1,-2))

local t = {}
local i = 0
while true do
  i = string.find(s,"\n",i+1)
  if i == nil then
    break
  end
  t[#t+1] = i
end

printTable(t)

date = "Today is 17/7/1990Mi"
d = string.match(date,"%d+/%d+/%d+")
print(d)


result = string.gsub("Lua is cute","cute","great")
result = string.gsub("all lii","l","x")
result = string.gsub("Lua is great","sol","sun");
str = "Jell dfm lj fds"
print(string.gsub(str," ","X"))
result = select(2,string.gsub(str," "," "))



words = {}
for w in string.gmatch(str,"%a+") do
  words[#words+1] = w
end

printTable(words)

print(result)

function search(modname,path)
  modname = string.gsub(modname,"%.","/")
  for c in string.gmatch(path,"[^;]+") do
    local fname = string.gsub(c,"?",modname)
    local f = io.open(fname)
    if f then
      f:close()
      return fname
    end
  end
  return nil --没有找到
end






















