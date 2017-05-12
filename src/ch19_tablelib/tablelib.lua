--第19章 table库

function printTable(tab)
  local isNil = true
  for i,v in ipairs(tab) do
    print(i.." : "..v)
    isNil = false
  end

  if isNil then
    print("pairs")
    for k,v in pairs(tab) do
      print(k.." : "..v)
    end
  end
end

tabA = {1,2,3,"a"}
tabB = {4,5,6,"b"}
tabTest = {1,2,3,4,5}


table.insert(tabTest,10)
printTable(tabTest)

table.insert(tabTest,3,"3+")
printTable(tabTest)

table.remove(tabTest)
printTable(tabTest)
table.remove(tabTest,2)
printTable(tabTest)



line = {
  cluaH_parsent = 48,
  luaH_set = 10,
  aluaH_get = 24,
}

printTable(line)

--line2 = {"a","ab","c","d","abbcd"}
--table.sort(line2,function(a,b)
--                    return a > b 
--                  end)
--print("table.sort()")
--printTable(line2)
--
--print("------------")
--printTable(line2)


table.sort(line)
printTable(line)






a = {}
for k in pairs(line) do
  a[#a+1] = k
end
print("Table A :")
printTable(a)
table.sort(a,function(a,b) return a < b end)
printTable(a)


--[==[

--包含record的数组排序
local line3 = {{x=1,y=1},{x=2,y=2},{x=4,y=4},{x=5,y=5},{x=3,y=3}}
table.sort(line3,function(a,b) return a.x > b.x end)



---迭代器写法

function pairsByKeys(t,key)
  local a = {}
  for n in pairs(t) do 
    a[#a+1] = n
  end
  table.sort(line,function(a,b) return a < b end)
  local i = 0
  return function()
    i = i + 1
    return a[i],t[a[i]]
  end
end


for name,line in pairsByKeys(line) do
  print(name,line)
end




--]==]


--[=[

--字符串链接
function rconcat(li)
  if type(li) ~= "table" then
  return li end
  local res = {}
  for i=1,#li do
     res[i] = rconcat(li[i])
  end
  return table.concat(res)
end
local result = rconcat({"a",{"b","c",4},"e",{"f",{"g",{"h"}}}});
print(result)


local test = {"a","b","c","d","e","f","g"}
result =table.concat(test,";;",3,#test-1-1)
print(result)


--unpack
--print("unpack",table.unpack(test))--5.3

print(unpack(test))



--pack
--tab = table.pack("a","b","c","d","g","f") --5.3
--printTable(tab)

--table.move()  --5.3


--]=]

