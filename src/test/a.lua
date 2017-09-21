 local adt = "Hello lua"
  
 local testnum = "100"
 
 
 local aa = 1;
 local aa = 2;
 print(aa);

function test()
   testData = "testData"
   print(testData)
end



local function printTable(tab)
  for i,v in pairs(tab) do
    print("pso:"..i.." ".."v:"..tab[i])
  end
end

local tab = {1,2,3,4,5}

printTable(tab)

table.remove(tab)
printTable(tab)

table.remove(tab)
printTable(tab)


local tabA = {1,2,3,4}
local tabB = {5,6,7,8}

for i,v in ipairs (tabA) do
  table.insert(tabB,1,tabA[i])
end

print("tabA")
printTable(tabA)

print("tabB")
printTable(tabB)

print("移除后的结果")
local removeResult = table.remove(tabA)
print(removeResult)



print("测试")

a = 100

if a >= 100 then
  print("测试通过")
end

local tab = {"nihao"}
print(" "..#tab.."  "..tab[1])


print("测试table#的用法")
local tab = {}
tab[17] = "ok"
tab[100] = "nihao"
print(#tab)



print("---------------")
--local tabA = {[2]=2,[33]=33};
--printTable(tabA)
--table.remove(tabA,33)
--printTable(tabA)

local tabB = {}
table.insert(tabB,1)
table.insert(tabB,3,3)
printTable(tabB)
print("length:"..#tabB)
table.remove(tabB,2)
table.remove(tabB,3)

tabB[3] = nil;

printTable(tabB)


--local t2 = {"one","two","three","four","five"}
--for i,v in next(t2) do
--  print(i,v)
--end











