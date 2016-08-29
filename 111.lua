-- str = " 12*2*3*4 "
-- print(string.match(str,"[%d+%+-*/%d+]+"))
-- print(string.match)
-- s = {}
-- str1 = " anhghdfjs(1+2*3)=adh4+7"
-- local j = 1
-- for i in string.gmatch(str1,"[%b()%d+%+-*/%d+]+") do
-- 	print(i)
-- 	s[j] = i  
-- 	j = j+1
-- end
-- print(unpack(s))

str = io.open("/Users/fancaimi/Desktop/222.txt","r")
local a = {}
local i=1
if str then
	-- src = io.read("str","*line")
	for line in io.lines("222.txt") do
		a[i] = line
		i=i+1
	end
end
print(unpack(a))

-- n = io.read("*all")
-- print(n)


-- print(src)

-- print("hi")

-- io.write("hello","lua\n")
-- io.write("hi","\n")
-- print("hello","lua")

-- t=io.read("*all")