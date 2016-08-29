function isTableOrder( tab,lower,upper )
	if (#tab == 0 or lower > upper) then
		print("参数错误")
		return false
	end
	--如果只存在两个元素
	if (#tab <= 2) then
		return true
	end
	--从左边开始找第一个非零元素
	local nLidx = 1;
	for i=1,#tab do
		if(tab[i] ~= 0) then
			nLidx = i
			break
		end
	end
--	print(nLidx)
	--从右边找第一个非零元素
	local nRidx = #tab;
	for i=#tab,nLidx,-1 do
		if (tab[i] ~= 0) then 
			nRidx = i
			break
		end
	end
--	print(nRidx)
	--只有一个非零值
	if (nRidx == nLidx) then
		if (tab[nLidx] ~= 0 and ((tab[nLidx] < lower or tab[nLidx] > upper))) then
			return false;
		end
		return true;
	end
	--全零情况
	if (nLidx >= #tab) then	
		return true;
	end;
	--计算公差，判断是不是等差数列
	local nStep = (tab[nRidx] - tab[nLidx]) / (nRidx - nLidx)
	if math.floor(nStep) < nStep then
		return false;
	end;
	--print(nStep)
	--print(nRidx)
	--判断两端的零是否符合上下限
	if ((nLidx > 1 and (tab[nLidx] - (nLidx-1)*nStep) < lower)
		or ((nRidx < #tab) and (tab[nRidx] + (#tab - nRidx)*nStep) > upper)
		) then
		return false;
	end
	--判断中间的零是否符合上下限
	for pos = nLidx,nRidx do
		local expctValue = tab[nLidx] + (pos - nLidx)*nStep;
		if (tab[pos] ~= 0 and tab[pos] ~= expctValue) then
			return false; 
		end;
		if (tab[pos] == 0 and (expctValue > upper or expctValue < lower)) then
			return false;
		end;
	end
	return true;
end
tab={
	{7,8},
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
	{0,-9,-7,0,0}
}
	lower,upper = -1,4
	for i=1,#tab do
		if (isTableOrder(tab[i],lower,upper)) then
			print("true".."    ".."The range of 0: "..lower.." to "..upper.."   "..table.concat(tab[i], " "))
		else
			print("false".."   ".."The range of 0: "..lower.." to "..upper.."   "..table.concat(tab[i], " "))
		end
	end
