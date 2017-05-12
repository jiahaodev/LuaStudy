--迭代器与泛型for

--7.1迭代器与闭包
local function list_iter(t)
  local i =0
  local n = #t
  return function()
    i = i+1
    if i<= n then  return t[i]  end
  end
end

function iterator(data)
  iter = list_iter(data)
  while true do
    local ele = iter()
    if ele == nil then
      break
    end
    print(ele)
  end
end


t = {10,20,30,_ext = "ext"}
table.insert(t,"fdfdkf")

iterator(t)






 