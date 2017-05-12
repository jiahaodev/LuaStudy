--a = "1"
--b = false
--c = "3"
--print(((a and b) or c))

tab = {"a",_key3 = "v","c",[2]="b"}
tab["1"] = "ff"
tab["key1"] = "val1"

tab2 = {"a","b",[2]="c",}

for k,v in pairs(tab) do 
--   print(k .. " - "..v)
end
print("******")

for k,v in ipairs(tab) do 
   print(k .. " - "..v)
end
print("******")


for k,v in pairs(tab2) do 
   print(k .. " - "..v)
end
print("******")

for k,v in ipairs(tab2) do 
   print(k .. " - "..v)
end

