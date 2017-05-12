--第10章  完整的示例


--示例1 数据描述
--[==[
entry = {
  title = "Tecgraf",
  org = "Computer Graphics Technology Group ,PUC-Rio",
  url = "http://www.tecgraf.puc-rio.br/",
  contact = "Waldemar Celes",
  description = [[Tecgraf is the resulet of a partnership between PUC_Rio,the Pontifical Catholic University of Rio de Janeiro]]..
  [[and <a HREF="http://www.petrobras.com.br/">PETROBRAS</a>, the Brazilian Oil Company.\nTecgraf is Lua's birthplace,and the language has been used there since 1993."]]..
  [[Currently,more than thirty programmers in Tecgraf use Lua regularly;they have written more than two hundred thousand lines of code,distributed among dozens of final products.]]
}


function fwrite(fmt,...)
  return io.write(string.format(fmt,...))
end

function writeheader()
  io.write(
  [[
  <html>
  <head><title>Projects using Lua</title></head>
  <body bgcolor="#ffffff">
  Here are brief descriptions of more projects around the world that use <a href="home.html">Lua</a>
  </br>
  ]]
  )
end


function entry(o)
  count = count + 1;
  local title = o.title or '(no title)'
  fwrite('<li><a href="#%d">%s</a>\n',count,title)
end

function entry2(o)
    count = count + 1
    fwrite('<hr>\n<h3>\n')
    local href = o.url and string.format('href = "%s"',o.url) or ''
    local title = o.title or o.org or 'org'
    fwrite('<a name = "%d%s">%s</a>\n',count,href,title)
    
    if io.title and o.org then
      fwrite('<br>\n<small><em>%s</em></small>',o.org)
    end
    fwrite('\n</h3>\n')
    
    if o.description then
      fwrite('%s<p>\n',string.gsub(o.description,'\n\n+','<p>\n'))
    end
    
    if o.email then
      fwrite('Contact:<a href = "malito:%s"</s>\n',
      o.email,o.contact or o.email)
    elseif o.contact then
       fwrite('Contact: %s\n',o.contact)
    end
end

function writetail()
  fwrite('</body></html>\n')
end


--]==]












