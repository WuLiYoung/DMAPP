-- 1.一个长度为10的整型数组a[10]={3,4,6,7,8,4,2,1,9,10}
-- 将a数组进行从小到大排序,将重复出现的数字全部删除(后续数字往前移)
a = {3,4,6,7,8,4,2,1,9,10}
b = {}; local j = 1
for i=1, #a do 
	for j=i+1,#a+1 do
		if a[i] == a[j] then 
	 	table.remove(a,i) 
		end 
		b[i]=a[i] 
	end

 end 
  for i=1,#b do
	for j=i+1,#b do
		if  b[i]>=b[j] then 			
			t = b[i]
			b[i] = b[j]
			b[j] = t
			end
	end
end
print(table.concat( b, "," ))


--2.现有一个元素数量不为0的表，每个元素均为整数，其中0可以表示任意数，
--请写出方法isTableOrder_Ex判断这个表中的数据是否是一个单调递增且公差为1的等差数列。(<=20 lines)
function isTableOder( t ,max)
	local  a = t local b = {} local x = 0 
	for i,v in ipairs(a) do
	    if v~=0 then 
	    	b[#b+1]=i          --
	    end
	end
	if #b==0 then
		return true
	end	
	if #a - b[#b] <= max - a[b[#b]] and b[1] - 1 <= a[b[1]] then
		n = a[b[1]] - b[1]
		for i=1,#b do
			if n==a[b[i]] - b[i] then
			else return false	
			end
		end
		return true
	else return false 
	end
end


y = {0,3,6}
k = {0,0,2,3,0}
t = {0,5,0,6,7}
n = {0,5,6,0,6,7}
m = {0,0,0}
p = {0,0,0,1,2}
o = {9,0,0,0,0}
v = {1,2,0,0,5,6,7}
print(isTableOder(o,9))


-- 3.请分别写出能够实现位与、位或的方法。
-- 位与方法名：BitOr   (<=20 lines)
-- 位或方法名：BitAnd  (<=20 lines)

function Change( n )    ---------将十进制转换为二进制
	local t = {} local a=n local rem
	while(a~=0) do
		rem=a%2  a=math.floor(a/2)
		t[#t+1] = rem
	end
	return t
end
-------------------位与-------------------
function BitAnd(a,b)
	local c = Change(a)
	local v = Change(b)
	local z = {}
	local x = 0
	if #c > #v then
		x = #c
	else
		x = #v
		end
	for i=1,x do
		if c[i]==v[i] then
			z[i] = c[i]
		end
		if c[i]~=v[i] then
			z[i] = 0
		end
	end
	return z
end
q=BitAnd(6,4)
n={}
for i=#q,1,-1 do
	n[#n+1] = q[i]
end
print(table.concat( n, "" ))

-------------------位或-------------------
function BitOr(a,b)
	local c = Change(a)
	local v = Change(b)
	local z = {}
	local x = 0
	if #c > #v then
		x = #c
	else
		x = #v
		end
	for i=1,x do
		if c[i]==v[i] then
			z[i] = c[i]
		end
		if c[i]~=v[i] then
			z[i] = 1
		end
	end
	return z
end
p=BitOr(12,4) 			----传参数
m={}
for i=#p,1,-1 do
	m[#m+1] = p[i]		
end
print(table.concat( m, "" ))

-- 1.一个长度为10的整型数组a[10]={3,4,6,7,8,4,2,1,9,10}
-- 将重复出现的数字全部删除(后续数字往前移)
a = {3,4,6,7,8,4,2,1,9,10}
b = {}; local j = 1
for i=1, #a do 
	for j=i+1,#a+1 do
		if a[i] == a[j] then 
	 	table.remove(a,i) 
		end 
		b[i]=a[i] 
	end

 end 
print(table.concat( b, "," ))

-- 2.现有一个元素数量不为0的表，每个元素均为整数，其中0可以表示任意数，
-- 请写出方法isTableOrder_Ex判断这个表中的数据是否是一个单调递增且公差为1的等差数列。(<=20 lines)
function isTableOder_Ex( t )
local a = {} a=t local x = 0
if #a==0 then
	return false
end
	for i=1,#a do
		if a[i]~=0 then 
			if a[i+1]==0 then
				a[i+1] = a[i] + 1
			end
			if a[i+1]~=0 then
				if a[i+1] == a[i] + 1 then
					-- if #a-1 == i then
					-- 	return true
					-- end	
				else
					return false		
 				end
 			end
		end
	end	
	return true
end

function isTableOder_ExPlus( t )
	local  a = t local b = {} 
	for i,v in ipairs(a) do
	    if v~=0 then 
	    	b[#b+1]=i          --
	    end
	end
	if #b==0 or #b==1 then
		return true
	end	
	n = a[b[1]] - b[1]
	for i=1,#b do
		if n==a[b[i]] - b[i] then
		else return false	
		end
	end
	return true
end
k = {0,0,2,3,0}
t = {0,5,0,6,7}
n = {0,5,6,0,6,7}
m = {0,0,0}
p = {0,0,0,1,2}
o = {6,0,0,0,0}
l = {}
v = {1,2,0,0,5,6,7}
print(isTableOder_Ex(n))
print(isTableOder_ExPlus(n))