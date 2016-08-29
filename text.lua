s = "5+4-3*5/6-6"
local t = {}
local i = 0
while true do
	i = string.find(s,"%p",i+1)
	print(string.sub(s,i,i))
end