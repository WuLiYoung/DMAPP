function isTableOder( t ,min,max)
	local  a = t local b = {} 
	for i,v in ipairs(a) do
	    if v~=0 then 
	    	b[#b+1]=i          
	    end
	end
	if #b==0 then
		return true
	end
	if 
	local d = a[b[2]] - a[b[1]]
  	if a[b[#b]] + (#a-b[#b])*d <= max  and a[b[1]] - (b[1] - 1)*d >= min then
  		for i=1,#b-1 do
  			if d == a[b[i+1]] - a[b[i]] then
  			else return false
 			end	
  		end
  		return true
  	else
  		return false 
  	end	
end	

--测试
slot={
	{1,2,3,4,5,6,7,8,0,0,0,0,0,0,0,0},
	{1,2,3,4,5,6,7,7},
	{-3,-1,1,3,5},
	{-3,-1,1,3,4},
	{1,0,2,5},
	{1,0,3,4},
	{0,0,0,1,3,5},
	{0,0,1,2,0,4,5},
	{0,0,1,2,0,0,4},
	{0,0,1,2,0,0,5},
	{0,0,0,1,0,0,0},
	{0,0,0,0,0},
	{1,5,6},
	{1,5,9},
	{5,4,3,2,1},
	{2,0,0},
	{0,0,0,0,0},
	{1,0,0,0,0},
	{0,0,0,0,1},
	{0,0,1,0,0},
	{0,1,0,3,0},
	{1,2,0,0,0},
	{0,0,0,1,2},
	{1,2,3,4,5},
	{2,4,6,8,10},
	{3,5,7,0,11},
	{-9,-7,0,0,-1},
	{-9,0,0,0,-1},
	{0,-7,-5,0,-1},
	{0,0,0,-3,0},
	{-9,0,0,0,0},
	{0,0,0,0,-1},
	{-9,0,-5,0,-1},
	{0,-9,-7,0,0},
}
min=-1
max=15
for i=1,table.getn(slot) do
	temp = slot[i];
	if(isTableOder(temp,min,max)) then
		--print("ture|"..table.concat(temp,",").."}".." is order");
		print("true".."  "..table.concat(temp,',').."  min="..min.." max="..max)
	else
		--print("false|"..table.concat(temp,",").."}".." is not order");
		print("false".."  "..table.concat(temp,',').."  min="..min.." max="..max)
	end
end
