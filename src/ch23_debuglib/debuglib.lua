--第23章： 调试库

--添加钩子函数
--debug.sethook(print,"l")

function trace(event,line)
  local s = debug.getinfo(2).short_src
  print(s.." : "..line)
end

debug.sethook(trace,"l")


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

function traceback()
  for level=1,math.huge do
    --尝试获取该层级信息，若为空,退回
    local info = debug.getinfo(level)
    if not info then
      break;
    end
    if info.what =="C" then
      print(level,"C function")
    else
      print(string.format("[%s]:%d",info.short_src,info.currentline))
    end
  end

end

traceback()

print("使用debug.traceback()")

function callTraceback()
  print(debug.traceback())
end

callTraceback()

tab = debug.getinfo(traceback)
printTable(tab)



