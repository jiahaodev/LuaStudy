--11章  使用table实现数据结构


-- 数组(初始化)
a = {}
for i =1,1000 do
  a[i] = 0
end

a={}
for i =-5,5 do
  a[i] =0
end

--矩阵和多维数组
M,N=5,5  --M表示列数
mt = {}
for i=1,N do
  mt[i] = {}
  for j=1,i do
    mt[i][j] = i*j
    print(mt[i][j])
  end
end
print("#mt:"..#mt)
print("****************")
--
mt = {}
for i =1,N do
  for j=1,M do
    mt[(i-1)*M +j] = i*j
    print(mt[(i-1)*M+j])
  end
end
print(#mt)


--链表
print("链表。。。")
list7 = {next = list8, value = "7"}
list6 = {next = list7, value = "6"}
list5 = {next = list6, value = "5"}
list4 = {next = list5, value = "4"}
list3 = {next = list4, value = "3"}
list2 = {next = list3, value = "2"}
list1 = {next = list2, value = "1"}

function linked_list(list)
  local li = list
  while li do
    print(li.value)
    li = li.next
  end
end

linked_list(list1)


--队列和双向队列
List = {}
function List.new()
  return {first = 0 , last = -1}
end

function List.pushleft (list, value)
  local first = list.first - 1
  list.first = first
  list[first] = value
end

function List.pushright (list, value)
  local last = list.last + 1
  list.last = last
  list[last] = value
end

function List.popleft (list)
  local first = list.first
  if first > list.last then error("list is empty") end
  local value = list[first]
  list[first] = nil -- to allow garbage collection
  list.first = first + 1
  return value
end

function List.popright (list)
  local last = list.last
  if list.first > last then error("list is empty") end
  local value = list[last]
  list[last] = nil -- to allow garbage collection
  list.last = last - 1
  return value
end



--集合和包
reserved = {
  ["while"] = true, ["end"] = true,
  ["function"] = true, ["local"] = true,
}

for w in reserved do
  if reseverd[w] then
    print(w.." is a reservered word")
  end
end































































































































