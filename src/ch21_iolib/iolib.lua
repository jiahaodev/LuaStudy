--第21章： IO库


io.write("sin (3) = ",math.sin(3),"\n")
io.write(string.format("sin (3) = %.4f\n",math.sin(3)))

print("sin (3) = ",math.sin(3),"\n")
print(string.format("sin (3) = %.4f\n",math.sin(3)))

--加个注释
t = io.read("*all")
t = string.gsub(t,"([\128-\225=])",function(c)
                    return string.format("=%02X",string.byte(c))
                end)
io.write(t)