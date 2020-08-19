size = { 2048, 2048 }


defineProperty("Radar_brt", createGlobalPropertyf("custom/rdr4b/brightness", 0.8))
defineProperty("Radar_tilt", createGlobalPropertyf("custom/rdr4b/tilt", 0.0))
defineProperty("Radar_gain", createGlobalPropertyf("custom/rdr4b/gain", 0.0))
defineProperty("Radar_range", createGlobalPropertyi("custom/rdr4b/range", 0))
defineProperty("Radar_mode", createGlobalPropertyi("custom/rdr4b/mode", 0))
defineProperty("Radar_stab", createGlobalPropertyi("custom/rdr4b/stab", 1))



-- local Radar_wx_mode_command = sasl.createCommand("ksgy/L410/radar/wx_mode", "Radar Wx mode")
-- function Radar_wx_mode_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	-- if 0 == phase then
		-- local mode = get(Radar_mode)
		-- if mode == 4 then return false end --skip if radar in STBY mode
		-- set(Radar_mode, 0)
	-- end
	
		-- return false
-- end


-- sasl.registerCommandHandler(Radar_wx_mode_command, 0, Radar_wx_mode_handler)

-- local Radar_wxa_mode_command = sasl.createCommand("ksgy/L410/radar/wxa_mode", "Radar WxA mode")
-- function Radar_wxa_mode_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	-- if 0 == phase then
		-- local mode = get(Radar_mode)
		-- if mode == 4 then return false end --skip if radar in STBY mode
		-- set(Radar_mode, 1)
	-- end
	
		-- return false
-- end
-- sasl.registerCommandHandler(Radar_wxa_mode_command, 0, Radar_wxa_mode_handler)

-- local Radar_map_mode_command = sasl.createCommand("ksgy/L410/radar/map_mode", "Radar MAP mode")
-- function Radar_map_mode_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	-- if 0 == phase then
		-- local mode = get(Radar_mode)
		-- if mode == 4 then return false end --skip if radar in STBY mode
		-- set(Radar_mode, 2)
	-- end
	
		-- return false
-- end
-- sasl.registerCommandHandler(Radar_map_mode_command, 0, Radar_map_mode_handler)

-- local Radar_nav_mode_command = sasl.createCommand("ksgy/L410/radar/nav_mode", "Radar NAV mode")
-- function Radar_nav_mode_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	-- if 0 == phase then
		-- local mode = get(Radar_mode)
		-- if mode == 4 then return false end --skip if radar in STBY mode
		-- set(Radar_mode, 3)
	-- end
	
		-- return false
-- end
-- sasl.registerCommandHandler(Radar_nav_mode_command, 0, Radar_nav_mode_handler)

-- local Radar_rng_dn_command = sasl.createCommand("ksgy/L410/radar/rng_dn", "Radar range down")
-- function Radar_rng_dn_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	-- if 0 == phase then
		-- local range = get(Radar_range)
		-- if range > 0 then range = range - 1 end
		-- set(Radar_range, range)
	-- end
	
		-- return false
-- end
-- sasl.registerCommandHandler(Radar_rng_dn_command, 0, Radar_rng_dn_handler)

-- local Radar_rng_up_command = sasl.createCommand("ksgy/L410/radar/rng_up", "Radar range up")
-- function Radar_rng_up_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	-- if 0 == phase then
		-- local range = get(Radar_range)
		-- if range < 4 then range = range + 1 end
		-- set(Radar_range, range)
	-- end
	
		-- return false
-- end
-- sasl.registerCommandHandler(Radar_rng_up_command, 0, Radar_rng_up_handler)

-- local trk_held = 0;
-- local Radar_trk_left_command = sasl.createCommand("ksgy/L410/radar/trk_left", "To do")
-- function Radar_trk_left_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
		-- trk_held = trk_held + 1
	-- if 0 == phase then
		-- local trak = get(Radar_trk)
		-- if trak > -50 then trak = trak - 1 end
		-- set(Radar_trk, trak)
		-- trk_held = 0
	-- elseif 1 == phase and trk_held == 15 then
		-- local trak = get(Radar_trk)
		-- if trak > -50 then trak = trak - 1 end
		-- set(Radar_trk, trak)
		-- trk_held = 10
	-- elseif 2 == phase then
		-- trk_held = 0
	-- end
	
		-- return false
-- end


-- sasl.registerCommandHandler(Radar_trk_left_command, 0, Radar_trk_left_handler)

-- local Radar_trk_right_command = sasl.createCommand("ksgy/L410/radar/trk_right", "To do")
-- function Radar_trk_right_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	-- trk_held = trk_held + 1
	-- if 0 == phase then
		-- local trak = get(Radar_trk)
		-- if trak < 50 then trak = trak + 1 end
		-- set(Radar_trk, trak)
		-- trk_held = 0
	-- elseif 1 == phase and trk_held == 15 then
		-- local trak = get(Radar_trk)
		-- if trak < 50 then trak = trak + 1 end
		-- set(Radar_trk, trak)
		-- trk_held = 10
	-- elseif 2 == phase then
	 -- trk_held = 0
	-- end
	
		-- return false
-- end

-- sasl.registerCommandHandler(Radar_trk_right_command, 0, Radar_trk_right_handler)


-- local Radar_pwr_dn_command = sasl.createCommand("ksgy/L410/commands/radar/pwr_dn", "Power knob left")
-- function Radar_pwr_dn_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	-- if 0 == phase then
		-- local power = get(Radar_power)
		-- if power > 0 then 
				-- power = power - 1 
				-- set(Radar_power, power)
				-- if power == 0 then 
						-- return false
				-- elseif power == 1 then
					-- set(Radar_mode, 4) --radar mode STBY
				-- elseif power == 2 then
					-- set(Radar_mode, 0) --radar mode WX
				-- end
		-- end
	-- end
	
		-- return false
-- end
-- sasl.registerCommandHandler(Radar_pwr_dn_command, 0, Radar_pwr_dn_handler)

-- local Radar_pwr_up_command = sasl.createCommand("ksgy/L410/commands/radar/pwr_up", "Power knob right")
-- function Radar_pwr_up_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	-- if 0 == phase then
		-- local power = get(Radar_power)
		-- if power < 2 then 
			-- power = power + 1 
			-- set(Radar_power, power)
				-- if power == 1 then
					-- set(Radar_mode, 4) --radar mode STBY
				-- elseif power == 2 then
					-- set(Radar_mode, 0) --radar mode WX
				-- end
		-- end
	-- end
	
		-- return false
-- end
-- sasl.registerCommandHandler(Radar_pwr_up_command, 0, Radar_pwr_up_handler)