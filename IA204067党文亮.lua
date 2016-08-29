function isTableOrder(a,b,c)
	local v=0; m={};
	if #a==0 then
		return print("表中无元素")
	end
	for i=1,#a,1 do       --找到前两个非零数
		if(a[i]~=0) then
			v=v+1         --标记前两个非零数的个数
			m[v]=i        --记录前两个非零数的下标
			if v==2 then
			   break
			end  
		end
	end
	if v==0 then          --如果v等于0说明表中元素全部为零
		return true
	elseif v==1 then
		if a[m[1]]<b  or a[m[1]]>c then
			return false
		elseif ((a[m[1]]+(#a-m[1])<=c and a[m[1]]-(m[1]-1)>=b)) or ((a[m[1]]+(m[1]-1)<=c and a[m[1]]-(#a-m[1])>=b))then
			return true
		else
			return false
		end
	end
	local n=(a[m[2]]-a[m[1]])/(m[2]-m[1])    --计算公差
	if math.ceil(n)~=n then					
		return false
	end 
	--print(x,n)
    --print(table.concat(m, ","))
	for i=1,m[1]-1,1 do                      --判断第一个非零数之前是否为等差
		if(a[m[1]]-n*i<b) or (a[m[1]]-n*i>c) then
		 	return false
		end
	end
	local j=1;
	for i=m[1]+1,#a,1 do                      --判断第一个非零数之后是否为等差
      	if (a[i]==0) and (a[m[1]]+n*j>=b) and (a[m[1]]+n*j<=c) then
      	elseif a[m[1]]+(i-m[1])*n==a[i] then
      	else
      		return false
      	end
      		j=j+1;
    end
    return true
end
slot={
	{},
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
	{2,0,0,0},
	{1,1.5,2,2.5}
}
b=-1;c=3
for i=1,table.getn(slot) do
	temp = slot[i];
	if(isTableOrder(temp,b,c)) then
		print("true".."  "..table.concat(temp,',').."  b="..b.." c="..c)
	else
		print("false".."  "..table.concat(temp,',').."  b="..b.." c="..c)
	end
end
