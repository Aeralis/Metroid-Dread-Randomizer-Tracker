function novlock()
	return Tracker:FindObjectForCode("vlock").Active == false
end

function IsStart(area, room, dir)
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
	
	return currentArea == areaStart[area]
		and currentRoom == roomStart[room]
		and currentDir == dirStart[dir] 
end

function OpenCharge()
	local chargeDoor = Tracker:FindObjectForCode("chargelock").CurrentStage
	if chargeDoor == 0 then
		return Tracker:FindObjectForCode("charge").Active
	elseif chargeDoor == 1 then
		return true
	elseif chargeDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif chargeDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif chargeDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif chargeDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif chargeDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif chargeDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif chargeDoor == 8 then
		return true
	elseif chargeDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif chargeDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif chargeDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif chargeDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif chargeDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif chargeDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end

function OpenWide()
	local wideDoor = Tracker:FindObjectForCode("widelock").CurrentStage
	if wideDoor == 0 then
		return Tracker:FindObjectForCode("wide").Active
	elseif wideDoor == 1 then
		return true
	elseif wideDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif wideDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif wideDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif wideDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif wideDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif wideDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif wideDoor == 8 then
		return true
	elseif wideDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif wideDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif wideDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif wideDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif wideDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif wideDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end

function OpenPlasma()
	local plasmaDoor = Tracker:FindObjectForCode("plasmalock").CurrentStage
	if plasmaDoor == 0 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif plasmaDoor == 1 then
		return true
	elseif plasmaDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif plasmaDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif plasmaDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif plasmaDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif plasmaDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif plasmaDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif plasmaDoor == 8 then
		return true
	elseif plasmaDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif plasmaDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif plasmaDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif plasmaDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif plasmaDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif plasmaDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end

function OpenWave()
	local waveDoor = Tracker:FindObjectForCode("wavelock").CurrentStage
	if waveDoor == 0 then
		return Tracker:FindObjectForCode("wave").Active
	elseif waveDoor == 1 then
		return true
	elseif waveDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif waveDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif waveDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif waveDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif waveDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif waveDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif waveDoor == 8 then
		return true
	elseif waveDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif waveDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif waveDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif waveDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif waveDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif waveDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end

function OpenGrapple()
	local grappleDoor = Tracker:FindObjectForCode("grapplelock").CurrentStage
	if grappleDoor == 0 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif grappleDoor == 1 then
		return true
	elseif grappleDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif grappleDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif grappleDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif grappleDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif grappleDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif grappleDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif grappleDoor == 8 then
		return true
	elseif grappleDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif grappleDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif grappleDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif grappleDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif grappleDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif grappleDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end

function OpenMissile()
	local missileDoor = Tracker:FindObjectForCode("missilelock").CurrentStage
	if missileDoor == 0 then
		return true
	elseif missileDoor == 1 then
		return true
	elseif missileDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif missileDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif missileDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif missileDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif missileDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif missileDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif missileDoor == 8 then
		return true
	elseif missileDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif missileDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif missileDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif missileDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif missileDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif missileDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end

function OpenSuper()
	local superDoor = Tracker:FindObjectForCode("superlock").CurrentStage
	if superDoor == 0 then
		return Tracker:FindObjectForCode("super").Active
	elseif superDoor == 1 then
		return true
	elseif superDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif superDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif superDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif superDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif superDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif superDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif superDoor == 8 then
		return true
	elseif superDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif superDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif superDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif superDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif superDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif superDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end

function OpenCloak()
	local cloakDoor = Tracker:FindObjectForCode("cloaklock").CurrentStage
	if cloakDoor == 0 then
		return Tracker:FindObjectForCode("cloak").Active
	elseif cloakDoor == 1 then
		return true
	elseif cloakDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif cloakDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif cloakDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif cloakDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif cloakDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif cloakDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif cloakDoor == 8 then
		return true
	elseif cloakDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif cloakDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif cloakDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif cloakDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif cloakDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif cloakDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end

function OpenAccess()
	local accessDoor = Tracker:FindObjectForCode("accesslock").CurrentStage
	if accessDoor == 0 then
		return true
	elseif accessDoor == 1 then
		return true
	elseif accessDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif accessDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif accessDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif accessDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif accessDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif accessDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif accessDoor == 8 then
		return true
	elseif accessDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif accessDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif accessDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif accessDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif accessDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif accessDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end

function OpenLocked()
	local lockedDoor = Tracker:FindObjectForCode("lockedlock").CurrentStage
	if lockedDoor == 0 then
		return false
	elseif lockedDoor == 1 then
		return true
	elseif lockedDoor == 2 then
		return Tracker:FindObjectForCode("charge").Active
	elseif lockedDoor == 3 then
		return Tracker:FindObjectForCode("diffusion").Active
	elseif lockedDoor == 4 then
		return Tracker:FindObjectForCode("wide").Active
	elseif lockedDoor == 5 then
		return Tracker:FindObjectForCode("plasma").Active
	elseif lockedDoor == 6 then
		return Tracker:FindObjectForCode("wave").Active
	elseif lockedDoor == 7 then
		return Tracker:FindObjectForCode("grapple").Active
	elseif lockedDoor == 8 then
		return true
	elseif lockedDoor == 9 then
		return Tracker:FindObjectForCode("super").Active
	elseif lockedDoor == 10 then
		return Tracker:FindObjectForCode("ice").Active
	elseif lockedDoor == 11 then
		return Tracker:FindObjectForCode("storm").Active
	elseif lockedDoor == 12 then
		return Tracker:FindObjectForCode("bomb").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif lockedDoor == 13 then
		return Tracker:FindObjectForCode("cross").Active
		and Tracker:FindObjectForCode("morph").Active
	elseif lockedDoor == 14 then
		return Tracker:FindObjectForCode("pbomb").Active
		and Tracker:FindObjectForCode("morph").Active
	end
end