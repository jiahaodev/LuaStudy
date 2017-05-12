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