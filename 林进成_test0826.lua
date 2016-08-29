--[[1.现有一个元素数量不为0的表，每个元素均为整数，其中0可以表示，
请写出方法isTableOrder_Ex判断这个表中的数据是否是一个等差数列。
(<=20 lines)]]
function isTableOrder( x,a,b )
	local val = 0;
	local tmp = 0;
	local d = 0;
	local num1 = 0;
	for i=1,#x do
		if(x[i]~=0) then
			tmp=tmp+1;	--非0数字个数，2表示2个以上
			if(tmp==1) then
				num1=i;  --print(num1) --记录第一个非0数字的下标num1
			end
			if(tmp>1) then  --有两个以上非0数字的情况
				d = (x[i]-x[num1])/(i-num1);  --print(num1,d)  --i为第二个非0数字的下标，计算公差
				if(math.ceil(d)~=d) then
					return false;
				end
				for j=num1,2,-1 do
					val = val+x[j]-d;  --print(j,val)
					if(val<a or val>b) then  --print(val)
						return false;
					end
				end
				val = 0;
				for j=num1+1,#x do	
					if(x[j]~=0 and x[j]~=val+x[j-1]+d) then  --print(x[j])
						return false;
					end
					if(x[j]==0) then
						val = val+x[j-1]+d;
						if(val<a or val>b) then 
							return false;
						end
					else
						val=0;
					end
				end
				break;
			end
		end		
	end
	val = 0;
	if(tmp==1) then
		if(x[num1]<a or x[num1]>b) then
			if(num1>1 and num1<#x) then
				return false;
			end
		end
		if(x[num1]<a) then
			if(num1==1) then
				d=a-x[num1];
				for i=2,#x do
					val = val+x[i-1]+d;  --print(j,val)
					if(val<a or val>b) then  --print(d,num1,val)
						return false;
					end
				end
				val = 0; 
			end
			if(num1==#x) then
				d=x[num1]-a;
				for i=#x,2,-1 do
					val = val+x[i]-d;  --print(j,val)
					if(val<a or val>b) then  --print(num1,val,d)
						return false;
					end
				end
			end
			val = 0;
		end
		if(x[num1]>b) then
			if(num1==1) then
				d=b-x[num1];
				for i=2,#x do
					val = val+x[i-1]+d;  --print(j,val)
					if(val<a or val>b) then  --print(d,num1,val)
						return false;
					end
				end
				val = 0; 
			end
			if(num1==#x) then
				d=x[num1]-b;
				for i=#x,2,-1 do
					val = val+x[i]-d;  --print(j,val)
					if(val<a or val>b) then  --print(num1,val,d)
						return false;
					end
				end
			end
			val = 0;
		end

	end
	return true;
end
--测试
slot={
	{1,2,3,4,5,6,7,8},
	{1,2,3,4,5,6,7,7},
	{-3,-1,1,3,5},
	{-3,-1,1,3,4},
	{1,0,2,5},
	{1,0,3,4},
	{0,0,0,1,3,5},
	{0,0,1,2,0,4,5},
	{0,0,1,2,0,0,4},
	{0,0,1,2,0,0,5},
	{0,0,0,1,2,0,0},
	{0,0,0,0,0},
	{1,5,6},
	{1,5,9},
	{5,4,3,2,1},
	{2,0,3}	
}
a=1
b=15
for i=1,16 do
	temp = slot[i];
	if(isTableOrder(temp,a,b)) then
		--print("ture|"..table.concat(temp,",").."}".." is order");
		print("true".."  "..table.concat(temp).."  "..a.." "..b)
	else
		--print("false|"..table.concat(temp,",").."}".." is not order");
		print("false".."  "..table.concat(temp).."  "..a.." "..b)
	end
end
-- t1 = {0,0,0,3,0,0,12,0,18,21,24,0,0};
-- t2 = {12,15,0,0,24,27}
-- t3 = {0,0,0}
-- t4 = {0,5,0,0}
-- t5 = {5,0,0}
-- t6 = {0,0,0,5}
-- a=6;
-- b=7;
-- print("二.判断表中数据是否等差，其中0表有上下限 ",a,b)
-- print(table.concat(t1)) if(isTableOrder(t6,a,b)) then print("true");else print("false") end
-- print(table.concat(t2)) if(isTableOrder(t6,a,b)) then print("true");else print("false") end
-- print(table.concat(t3)) if(isTableOrder(t6,a,b)) then print("true");else print("false") end
-- print(table.concat(t4)) if(isTableOrder(t6,a,b)) then print("true");else print("false") end
-- print(table.concat(t5)) if(isTableOrder(t6,a,b)) then print("true");else print("false") end
-- print(table.concat(t6)) if(isTableOrder(t6,a,b)) then print("true");else print("false") end









