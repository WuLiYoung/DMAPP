-- 1、使用一个函数返回传入的table内所有元素的组合。
function tab(a)
	 if(#a==0) then
	 	return false
	 end
	 for i=1,#a,1 do
	 	 print(a[i])
	 	 local n=1
	 	 local m={}
	 	 m[n]=a[i]
	 	 for j=i+1,#a,1 do
	 	 	n=n+1
	 	 	m[n]=a[j]
	 	 	print(table.concat(m,","))	
	 	 end	 	 
	 end
	 return true                                
end
a={1,2,3}
print(tab(a))