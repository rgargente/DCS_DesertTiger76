--To provide custom AI Attack Tasks 
--Script attached to mission and executed via trigger
--Functions accessed via LUA Run Script on waypoint
------------------------------------------------------------------------------------------------------- 

--custom functions to allow all aircraft in a flight to attack multiple ground targets simultenously

----- attack multiple static objects -----
function CustomStaticAttack(FlightName, TargetList, expend, weaponType, attackType)
	if attackType == "nil" then
		attackType = nil
	end
	local flight = Group.getByName(FlightName)						--get group of attacking flight
	local wingman = flight:getUnits()								--get list of units from attacking flights
	for n = 1, #wingman do											--iterate through all aircraft in flight
		
		local cntrl 
		if n == 1 then												--for leader
			cntrl = flight:getController()							--get controller of group
		else														--for wingmen
			cntrl = wingman[n]:getController()						--get controller of individual aircraft in flight
			cntrl:setOption(AI.Option.Air.id.REACTION_ON_THREAT, 2) 	--set to evade fire again, as controller for individual unit does not take over options from parent group
		end
		
		local ComboTask = {											--define combo task to hold multiple attack tasks
			id = 'ComboTask',
			params = {
				tasks = {},
			},
		}
		
		for t = 1, #TargetList do									--iterate thourgh targets
		
			--each wingman gets one attack task for each target
			--wingman 1 attacks target 1,2,3 
			--wingman 2 attacks 2,3,1
			--wingman 3 attacks 3,1,2 etc.
			
			local num = t + n - 1								
			while num > #TargetList do
				num = num - #TargetList
			end
		
			if StaticObject.getByName(TargetList[num]) then							--make sure that static object still exists
				local TargetID = StaticObject.getByName(TargetList[num]):getID()	--get static object ID

				local task_entry = {												--define attack task
					["enabled"] = true,
					["auto"] = false,
					["id"] = "AttackUnit",
					["number"] = #ComboTask.params.tasks + 1,
					["params"] = 
					{
						["unitId"] = TargetID,
						["expend"] = expend,
						["weaponType"] = weaponType,
						["groupAttack"] = true,
						["attackType"] = attackType,
					},
				}
				table.insert(ComboTask.params.tasks, task_entry)
			end
		end
		cntrl:pushTask(ComboTask)									--push task to front of task list
	end
end


----- attack multiple map objects -----
function CustomMapObjectAttack(FlightName, TargetList, expend, weaponType, attackType)
	if attackType == "nil" then
		attackType = nil
	end
	local flight = Group.getByName(FlightName)						--get group of attacking flight
	local wingman = flight:getUnits()								--get list of units from attacking flights
	for n = 1, #wingman do											--iterate through all aircraft in flight
		
		local cntrl 
		if n == 1 then												--for leader
			cntrl = flight:getController()							--get controller of group
		else														--for wingmen
			cntrl = wingman[n]:getController()						--get controller of individual aircraft in flight
			cntrl:setOption(AI.Option.Air.id.REACTION_ON_THREAT, 2) 	--set to evade fire again, as controller for individual unit does not take over options from parent group
		end
		
		local ComboTask = {											--define combo task to hold multiple attack tasks
			id = 'ComboTask',
			params = {
				tasks = {},
			},
		}
		
		for t = 1, #TargetList do									--iterate thourgh targets
		
			--each wingman gets one attack task for each target
			--wingman 1 attacks target 1,2,3 
			--wingman 2 attacks 2,3,1
			--wingman 3 attacks 3,1,2 etc.
			
			local num = t + n - 1								
			while num > #TargetList do
				num = num - #TargetList
			end

			local task_entry = {												--define attack task
				["enabled"] = true,
				["auto"] = false,
				["id"] = "AttackMapObject",
				["number"] = #ComboTask.params.tasks + 1,
				["params"] = 
				{
					["x"] = TargetList[num].x,
					["y"] = TargetList[num].y,
					["expend"] = expend,
					["weaponType"] = weaponType,
					["groupAttack"] = true,
					["attackType"] = attackType,
				},
			}
			table.insert(ComboTask.params.tasks, task_entry)
		end
		cntrl:pushTask(ComboTask)									--push task to front of task list
	end
end


function CustomFlareAttack(FlightName, tgt_x, tgt_y, grp_name, expend, weaponType, attackType)
	if attackType == "nil" then
		attackType = nil
	end
	if tgt_x == "n/a" and tgt_y == "n/a" then						--if the coordinates are n/a, then the target is a vehicle/ship group
		local tgt_grp = Group.getByName(grp_name)					--get target group
		local tgt_units = tgt_grp:getUnits()						--get target units 
		local tgt_p = tgt_units[1]:getPoint()						--get group leader point
		tgt_x = tgt_p.x
		tgt_y = tgt_p.z
	end
	
	local flight = Group.getByName(FlightName)						--get group of attacking flight
	local wingman = flight:getUnits()								--get list of units from attacking flights
	for n = 1, #wingman do											--iterate through all aircraft in flight
		
		local cntrl 
		if n == 1 then												--for leader
			cntrl = flight:getController()							--get controller of group
		else														--for wingmen
			cntrl = wingman[n]:getController()						--get controller of individual aircraft in flight
			cntrl:setOption(AI.Option.Air.id.REACTION_ON_THREAT, 2) 	--set to evade fire again, as controller for individual unit does not take over options from parent group
		end
		
		local ComboTask = {											--define combo task to hold multiple attack tasks
			id = 'ComboTask',
			params = {
				tasks = {
					[1] = {											--define attack task
						["number"] = 1,
						["auto"] = false,
						["id"] = "Bombing",
						["enabled"] = true,
						["params"] = 
						{
							["x"] = tgt_x,
							["y"] = tgt_y,
							["direction"] = 0,
							["attackQtyLimit"] = false,
							["attackQty"] = 1,
							["expend"] = expend,
							["altitude"] = 1524,
							["directionEnabled"] = false,
							["groupAttack"] = true,
							["altitudeEdited"] = true,
							["altitudeEnabled"] = true,
							["weaponType"] = weaponType,
							["attackType"] = attackType,
						},
					}
				},
			},
		}

		cntrl:pushTask(ComboTask)									--push task to front of task list
	end
end


function CustomLaserDesignation(FlightName, target, class, LaserCode)
	local laser														--variable to hold the laser spot

	if class == "vehicle" then										--target is a vehicle/ship group
	
		local function DesignationCycle()							--laser designation cycle function
			if laser then											--if there is already an existing laser spot
				laser:destroy()										--destroy it
			end
			
			local group = Group.getByName(target)					--get target group
			local units = group:getUnits()							--get target units
			
			local flight = Group.getByName(FlightName)				--get group of designating flight
			local wingman = flight:getUnits()						--get list of units from designating flights
			
			if wingman[1] and units[1] then							--if target group has a leader unit left
				local pos = units[1]:getPoint()						--get target position
				laser = Spot.createLaser(wingman[1], nil, pos, LaserCode)	--start laser spot
			end
			
			if laser then											--if there is a new laser spot
				return timer.getTime() + 2							--repeat designation cylce in 2 seconds
			else													--if no laser spot was created
				return												--stop designation cycle
			end
		end
		timer.scheduleFunction(DesignationCycle, nil, timer.getTime() + 1)	--start designation cylce
		
	elseif class == "static" then									--targets are static objects
		local u = 0													--TargetList counter
		
		local function DesignationCycle()							--laser designation cycle function
			if laser then											--if there is already an existing laser spot
				laser:destroy()										--destroy it
			end
			
			repeat
				u = u + 1											--iterate through all target elements
			until StaticObject.getByName(target[u]) or u == #target		--repeat until first alive static object is found in TargetList or end of TargetList is reached
			
			local static = StaticObject.getByName(target[u])		--get static object

			local flight = Group.getByName(FlightName)				--get group of designating flight
			local wingman = flight:getUnits()						--get list of units from designating flights
			
			if wingman[1] and static then							--if flight leader and static object are alive
				local pos = static:getPoint()						--get target position
				laser = Spot.createLaser(wingman[1], nil, pos, LaserCode)	--start laser spot
			end
			
			if laser then											--if there is a new laser spot
				return timer.getTime() + 2							--repeat designation cylce in 2 seconds
			else													--if no laser spot was created
				return												--stop designation cycle
			end
		end
		timer.scheduleFunction(DesignationCycle, nil, timer.getTime() + 1)	--start designation cylce
	
	elseif class == "scenery" then									--targets are scenery objects
		local u = 0													--TargetList counter
		
		local function DesignationCycle()							--laser designation cycle function
			if laser then											--if there is already an existing laser spot
				laser:destroy()										--destroy it
			end
			
			repeat
				u = u + 1											--iterate through all target elements
				
				local scenery
				local function IfFound(obj)							--function to run if scenery object is found
					scenery = obj									--store scenery object
				end
				
				local SearchArea = {								--scenery object search area centered on target position
					id = world.VolumeType.SPHERE,
					params = {
						point = {
							x = target[u].x,
							y = land.getHeight({x = target[u].x, y = target[u].y}),
							z = target[u].y
						},
						radius = 1
					}
				}
				world.searchObjects(Object.Category.SCENERY, SearchArea, IfFound)	--search for scenery object at target position
			until scenery or u == #target							--repeat until first alive scenery object is found in TargetList or end of TargetList is reached
			
			local flight = Group.getByName(FlightName)				--get group of designating flight
			local wingman = flight:getUnits()						--get list of units from designating flights
			
			if wingman[1]	then									--if flight leader is alive
				local pos = {										--get target position
					x = target[u].x,
					y = land.getHeight({x = target[u].x, y = target[u].y}),
					z = target[u].y
				}
				laser = Spot.createLaser(wingman[1], nil, pos, LaserCode)	--start laser spot
			end
			
			if laser then											--if there is a new laser spot
				return timer.getTime() + 2							--repeat designation cylce in 2 seconds
			else													--if no laser spot was created
				return												--stop designation cycle
			end
		end
		timer.scheduleFunction(DesignationCycle, nil, timer.getTime() + 1)	--start designation cylce
	end
end