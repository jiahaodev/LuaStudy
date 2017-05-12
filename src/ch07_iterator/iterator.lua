--第7章： 迭代器 与泛型for

function values(t)
  local i = 0;
  return function ()
    i = i + 1;
    return t[i]
  end
end


tab = {1,2,3,4,5,6,9}

--获取迭代器 --使用while遍历
iterator = values(tab)
while true do
  local item = iterator()
  if item then
    print(item)
  else
    break;
  end
end

--使用泛型for遍历
for element in values(tab) do
  print(element)
end



--迭代器应用
function allword()
  local line = io.read(); --读取当前行
  local pos = 1;
  return function ()
    while line do
      local s,e = string.find(line,"%w+",pos);
      if s then
        pos = e + 1
        return string.sub(line,s,e);
      else
        line = io.read(); --没有找到单词，尝试下一行
        pos = 1;  --在第一个位置上重新开始
      end
    end
    return nil; --没有其余行了，结算遍历
  end
end


--for word in allword() do
--  print(word)
--end




--无状态迭代器
a = {"one","two","three"};
for i,v in ipairs(a) do
  print(i,v)
end

--编写ipairs函数
--local function iter(a,i)
--  i = i + 1;
--  local v = a[i];
--  if v then
--    return i,v
--  end
--end

function ipairsTest(a)
  local iter =  function (a,i)
    i = i + 1;
    local v = a[i];
    if v then
      return i,v
    end
  end
  return iter,a,0
end

for i,v in ipairsTest(a) do
  print(i,v)
end


--遍历链表的函数




function traverse(list)

  local function getnext(list,node)
    if not node then
      return list
    else
      return node.next
    end
  end

  return getnext,list,nil

end

local list = nil
list = {next = list,key = 100}
list = {next = list,key = 200}
list = {next = list,key = 300}

for node in traverse(list) do
  print(node.key)
end












