function isTableOder( t ,min,max)
	local  a = t local b = {} 
	for i,v in ipairs(a) do
	    if v~=0 then 
	    	b[#b+1]=i        --a{}中非零数的索引存到b{}中
	    end
	end
	if #b==0 then			--a={0，0，0，0，0，0}
		return true
	end
	if #b==1 then
		if b[1] == 1 then	--a={2,0,0,0,0,0}
			if ((max - a[b[1]]) / (#a  - b[1]) >= 1 and a[b[1]] + (max - a[b[1]]) / (#a  - b[1]) >= min) or ((min - a[b[1]]) / (#a  - b[1]) <= -1 and a[b[1]] + (min - a[b[1]]) / (#a  - b[1]) <= max) then		
				return true
			else return false
				end	
		elseif b[1] == #a then   --a={0,0,0,0,2}
			if ((a[b[1]] - min) / (b[1] - 1) >=1 and a[b[1]] - (a[b[1]] - min) / (b[1] - 1) >= min) or ((a[b[1]] - max) / (b[1] - 1) <= -1 and a[b[1]] - (a[b[1]] - max) / (b[1] - 1) >= min)  then
				return true
			else return false
				end	                     
		elseif 1 < b[1] and b[1] < #a then      --a={0,0,0,2,0,0,0}
			if (a[b[1]] - min) / (b[1] - 1) >=1 and (max - a[b[1]]) / (#a  - b[1]) >= 1 then
				return true
			else return false
				end
		end
	end
	local d = (a[b[2]] - a[b[1]]) / (b[2] - b[1]) --公差
	local c = math.floor(d)			--取整
  	if a[b[#b]] + (#a-b[#b])*d <= max  and a[b[1]] - (b[1] - 1)*d >= min and c == d then
  		for i=1,#b-1 do
  			if d == (a[b[i+1]] - a[b[i]]) / (b[i+1] - b[i]) then
  			else return false
 			end	
  		end
  		return true
  	else
  		return false 
  	end	
end	

-- k = {-9,0,0,0,0}
-- print(isTableOder(k,-10,15))


slot={
	{0,0,0,0,2},
	{1,1.5,2,2.5},
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
	{1,0,0,0,0},
	{0,0,0,0,1},
	{3,5,7,0,11},
	{-9,-7,0,0,-1},
	{-9,0,0,0,-1},
	{0,-7,-5,0,-1},
	{0,0,0,-3,0},
	{-9,0,0,0,0},
	{0,0,0,0,-1}
}
min=0
max=6
for i=1,#slot do
	temp = slot[i];
	if(isTableOder(temp,min,max)) then
		--print("ture|"..table.concat(temp,",").."}".." is order");
		print("true".."  "..table.concat(temp,',').."  min="..min.." max="..max)
	else
		--print("false|"..table.concat(temp,",").."}".." is not order");
		print("false".."  "..table.concat(temp,',').."  min="..min.." max="..max)
	end
end
