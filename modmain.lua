if GetModConfigData("health_enhance") == 1 then
	GLOBAL.TUNING.HAYWALL_HEALTH = 1000
	GLOBAL.TUNING.WOODWALL_HEALTH = 2000
	GLOBAL.TUNING.STONEWALL_HEALTH = 4000
	GLOBAL.TUNING.RUINSWALL_HEALTH = 8000
	GLOBAL.TUNING.MOONROCKWALL_HEALTH = 6000
end

if GetModConfigData("health_regen") == 1 then
	local function regen( inst )
		inst:DoPeriodicTask(5, function( inst )
			if inst and inst.components and inst.components.health then
				local wall_health = inst.components.health:GetPercent()
		    	if wall_health < 1 then
		        	inst.components.health:DoDelta(GetModConfigData("regen_value"))
		    	end
		    end
		end)
	end
	AddPrefabPostInit("wall_hay", regen)
	AddPrefabPostInit("wall_wood", regen)
	AddPrefabPostInit("wall_stone", regen)
	AddPrefabPostInit("wall_ruins", regen)
	AddPrefabPostInit("wall_moonrock",regen)
end

if GetModConfigData("wall_undeployable") == 1 then
	--for wall_hay
	AddPrefabPostInit("wall_hay", function(inst)
		local function turnon(inst)
	    	inst.on = true
	    	inst:Remove()
	    	GLOBAL.SpawnPrefab("wall_hay_item").Transform:SetPosition(inst.Transform:GetWorldPosition())
		end
	    inst:AddComponent("machine")
	    inst.components.machine.turnonfn = turnon
	end)
	--for wall_wood
	AddPrefabPostInit("wall_wood", function(inst)
		local function turnon(inst)
	    	inst.on = true
	    	inst:Remove()
	    	GLOBAL.SpawnPrefab("wall_wood_item").Transform:SetPosition(inst.Transform:GetWorldPosition())
		end
	    inst:AddComponent("machine")
	    inst.components.machine.turnonfn = turnon
	end)
	--for wall_stone
	AddPrefabPostInit("wall_stone", function(inst)
		local function turnon(inst)
	    	inst.on = true
	    	inst:Remove()
	    	GLOBAL.SpawnPrefab("wall_stone_item").Transform:SetPosition(inst.Transform:GetWorldPosition())
		end
	    inst:AddComponent("machine")
	    inst.components.machine.turnonfn = turnon
	end)
	-- for wall_ruins
	AddPrefabPostInit("wall_ruins", function(inst)
		local function turnon(inst)
	    	inst.on = true
	    	inst:Remove()
	    	GLOBAL.SpawnPrefab("wall_ruins_item").Transform:SetPosition(inst.Transform:GetWorldPosition())
		end
	    inst:AddComponent("machine")
	    inst.components.machine.turnonfn = turnon
	end)
	-- for wall_moonrock
	AddPrefabPostInit("wall_moonrock", function(inst)
		local function turnon(inst)
	    	inst.on = true
	    	inst:Remove()
	    	GLOBAL.SpawnPrefab("wall_moonrock_item").Transform:SetPosition(inst.Transform:GetWorldPosition())
		end
	    inst:AddComponent("machine")
	    inst.components.machine.turnonfn = turnon
	end)
end