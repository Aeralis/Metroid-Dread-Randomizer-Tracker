function novlock()
	return Tracker:FindObjectForCode("vlock").Active == false
end

function IsStart(area, room, dir)
	print("area arg: " .. tostring(area))
	print("room arg: " .. tostring(room))
	print("dir arg: " .. tostring(dir))
	local areaStart = {
		art = 0.0, bur = 1.0, cat = 2.0, dai = 3.0, elu = 4.0,
		fer = 5.0, gha = 6.0, han = 7.0, ito = 8.0
	}
	local roomStart = {
		int = 0.0, map = 1.0, nav = 2.0, sav = 3.0
	}
	local dirStart = {
		c = 0.0, n = 1.0, e = 2.0, s = 3.0, w = 4.0
	}
	local currentArea = Tracker:FindObjectForCode("art").CurrentStage
	local currentRoom = Tracker:FindObjectForCode("int").CurrentStage
	local currentDir = Tracker:FindObjectForCode("c").CurrentStage
	
	print("Area: " .. tostring(currentArea))
	print("Room: " .. tostring(currentRoom))
	print("Dir: " .. tostring(currentDir))
	print("areaStart result: " .. tostring(areaStart[area]))
	print("currentArea: " .. tostring(math.floor(currentArea)))
	print("match: " .. tostring(math.floor(currentArea) == areaStart[area]))
	
	return currentArea == areaStart[area]
		and currentRoom == roomStart[room]
		and currentDir == dirStart[dir] 
end