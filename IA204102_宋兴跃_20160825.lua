--使用一个函数返回传入的table内所有元素的组合。
TestTable={"A","B","C","D"}					--假设table内只有4个元素
function ZuHe_TableElements( par )
	local t={}								--构建一个新表存放所有组合
	local n=#par
	for i=1,n do
		for j=i+1,n do
			table.insert(t,tostring(par[i])..tostring(par[j]))
			for k=j+1,n do
				table.insert(t,tostring(par[i])..tostring(par[j])..tostring(par[k]))
				for l=k+1,n do
					table.insert(t,tostring(par[i])..tostring(par[j])..tostring(par[k])..tostring(par[l]))
				end
			end
		end
	end
	for k,v in pairs(t) do
		print(k,v)
	end

end
ZuHe_TableElements(TestTable)