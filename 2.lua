tb = {1,2,3,4,1,1,1,1,4,4}
local a = tb
table.sort(a)
print(type(a))

for i,v in ipairs(a) do
	 for j=i+1,#a do
	 	if a[i]==a[j] then
	       a[j]=nil
	    end
		
	end
end
	
