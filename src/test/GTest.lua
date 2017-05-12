--由于全局变量未释放对 内存的损耗

a = "a"
do 
    local b = "b"
    c = "c"
end

for i,v in pairs(_G) do
  print(v)
end