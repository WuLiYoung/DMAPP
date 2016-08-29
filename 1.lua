

-- --hello world => abccd edfcg
-- local t = {"a", "b", "c", "d", "e", "f", "g"}
-- function fun(str)
-- 	val = "a"
-- 	num = 1
-- 	num2 = 0
-- 	f = 0
-- 	con = 1
-- 	for i = 2, 11 do
-- 		if (string.sub(str, i, i) == " ") then
-- 			var = var .. " "
-- 			con = 0
-- 		end
-- 		if (


-- 		 == 1) then 
-- 			for j = 1, i-1 do				
-- 				if (string.sub(str, j, j) == string.sub(str, i, i)) then
-- 					val = val .. t[j - num2]
-- 					num2 = num2 + 1 	
-- 					f = 0	
-- 					break;	
-- 				else
-- 					f = 1
-- 				end
-- 			end
-- 			if (f == 1) then 
-- 				num  = num + 1
-- 				val = val .. t[num]
-- 			end
-- 		end
-- 		con = 1
-- 	end
-- 	return val
-- end  

-- print(fun("helloworld"))


-- 	i = 1
-- 	for i = 1, #t do
-- 		if t[i] ~= 0 then
-- 			break
-- 		end
-- 	end
-- 	for j = i, #t-1 do 
-- 		n = 0                                                                                               
-- 		if t[i] ~= 0 then  
-- 			n = t[j]
-- 		end
-- 		if t[j+1] == n + 1 or t[j+1] == 0 then
-- 			n = n + 1
-- 		else
-- 			print (j)
-- 			return -1
-- 		end
-- 	end
-- 	return 1
-- end
-- function isTableOrder(a)
-- 	n = 0;
-- --	k = 0;  --记录以多少个0开头
-- 	n = a[1];
-- 	for i = 1, #t do
-- 		if n == 0 then
-- 			n = a[i];
-- 			k = k + 1;
-- 			if n ~= 0 and n - k < 0 then 
-- 				return false;
-- 			end
-- 		else
-- 			if(n + 1 == a[i] or a[i] == 0)then 
-- 				n = n + 1
-- 			else 
-- 				return false;
-- 			end
-- 		end
-- 	end
-- 	return true;
-- end


function isTableOrder(a)
	n = a[1];
	KeepZero = (n == 0)
	for i = 2, #t-1 do
		if KeepZero == true then
 			n = a[i]
 			if n ~= 0 then 
 				KeepZero = false
 			end
		else
			if(n + 1 == a[i] or a[i] == 0)then 
				n = n + 1
			else 
				return false
			end
		end
	end
	return true
end

--t = {0,0,2,0,4,0,0,7,0}
t = {0,0,1,2,3,0,5,6,0,0}

if (true == isTableOrder(t) ) then 
	print ("true")
else
	print ("false")
end
























