local drf = {
	rain = globalPropertyf("sim/weather/rain_percent"),
	external_view = globalPropertyf("sim/graphics/view/view_is_external"),	
	windows_heat_dr = globalPropertyi("sim/cockpit2/ice/ice_window_heat_on"),	
}
local frontLeftGlass = {
	obj_posx = globalPropertyf("librain/glass_0/obj/pos_offset/x"),
	obj_posy = globalPropertyf("librain/glass_0/obj/pos_offset/y"),
	obj_posz = globalPropertyf("librain/glass_0/obj/pos_offset/z"),
	gp_x = globalPropertyf("librain/glass_0/gravity_point/x"),
	gp_y = globalPropertyf("librain/glass_0/gravity_point/y"),
	gravity_factor = globalPropertyf("librain/glass_0/gravity_factor"),
	tp_x = globalPropertyf("librain/glass_0/thrust_point/x"),
	tp_y = globalPropertyf("librain/glass_0/thrust_point/y"),
	thrust_factor = globalPropertyf("librain/glass_0/thrust_factor"),
	max_thrust = globalPropertyf("librain/glass_0/max_thrust"),
	wp_x = globalPropertyf("librain/glass_0/wind_point/x"),
	wp_y = globalPropertyf("librain/glass_0/wind_point/y"),
	wind_factor = globalPropertyf("librain/glass_0/wind_factor"),
	wind_normal = globalPropertyf("librain/glass_0/wind_normal"),
	
	heat_zones = globalPropertyfa("librain/glass_0/heat_zones"),
	heat_tgt_temps = globalPropertyfa("librain/glass_0/heat_tgt_temps"),
	
	
	wiper_pivot_x = globalPropertyf("librain/glass_0/wiper_0/pivot/x"),
	wiper_pivot_y = globalPropertyf("librain/glass_0/wiper_0/pivot/y"),
	wiper_radius_outer = globalPropertyf("librain/glass_0/wiper_0/radius_outer"),
	wiper_radius_inner = globalPropertyf("librain/glass_0/wiper_0/radius_inner"),
	wiper_is_moving = globalPropertyf("librain/glass_0/wiper_0/moving"),		
	wiperAngle = globalPropertyf("librain/glass_0/wiper_0/angle"),
	
	wiper_angle_dr = globalPropertyfa("sim/flightmodel2/misc/wiper_angle_deg"),
	wiper_speed = globalPropertyf("sim/cockpit2/switches/wiper_speed"),
	max_tas = globalPropertyf("librain/glass_0/max_tas"),
	obj = globalPropertys("librain/glass_0/obj/filename"),
	loa = globalPropertyi("librain/glass_0/obj/load"),
	loaded = globalPropertyi("librain/glass_0/obj/loaded"),
}

local frontRightGlass = {
	obj_posx = globalPropertyf("librain/glass_1/obj/pos_offset/x"),
	obj_posy = globalPropertyf("librain/glass_1/obj/pos_offset/y"),
	obj_posz = globalPropertyf("librain/glass_1/obj/pos_offset/z"),
	gp_x = globalPropertyf("librain/glass_1/gravity_point/x"),
	gp_y = globalPropertyf("librain/glass_1/gravity_point/y"),
	gravity_factor = globalPropertyf("librain/glass_1/gravity_factor"),
	tp_x = globalPropertyf("librain/glass_1/thrust_point/x"),
	tp_y = globalPropertyf("librain/glass_1/thrust_point/y"),
	thrust_factor = globalPropertyf("librain/glass_1/thrust_factor"),
	max_thrust = globalPropertyf("librain/glass_1/max_thrust"),
	wp_x = globalPropertyf("librain/glass_1/wind_point/x"),
	wp_y = globalPropertyf("librain/glass_1/wind_point/y"),
	wind_factor = globalPropertyf("librain/glass_1/wind_factor"),
	wind_normal = globalPropertyf("librain/glass_1/wind_normal"),
	
	heat_zones = globalPropertyfa("librain/glass_1/heat_zones"),
	heat_tgt_temps = globalPropertyfa("librain/glass_1/heat_tgt_temps"),
	
	wiper_pivot_x = globalPropertyf("librain/glass_1/wiper_0/pivot/x"),
	wiper_pivot_y = globalPropertyf("librain/glass_1/wiper_0/pivot/y"),
	wiper_radius_outer = globalPropertyf("librain/glass_1/wiper_0/radius_outer"),
	wiper_radius_inner = globalPropertyf("librain/glass_1/wiper_0/radius_inner"),
	wiper_is_moving = globalPropertyf("librain/glass_1/wiper_0/moving"),		
	wiperAngle = globalPropertyf("librain/glass_1/wiper_0/angle"),
	
	wiper_angle_dr = globalPropertyfa("sim/flightmodel2/misc/wiper_angle_deg"),
	wiper_speed = globalPropertyf("sim/cockpit2/switches/wiper_speed"),
	max_tas = globalPropertyf("librain/glass_1/max_tas"),
	obj = globalPropertys("librain/glass_1/obj/filename"),
	loa = globalPropertyi("librain/glass_1/obj/load"),
	loaded = globalPropertyi("librain/glass_1/obj/loaded"),
}

local sideRightGlass = {
	obj_posx = globalPropertyf("librain/glass_2/obj/pos_offset/x"),
	obj_posy = globalPropertyf("librain/glass_2/obj/pos_offset/y"),
	obj_posz = globalPropertyf("librain/glass_2/obj/pos_offset/z"),
	slant = globalPropertyf("librain/glass_2/slant_factor"),
	gp_x = globalPropertyf("librain/glass_2/gravity_point/x"),
	gp_y = globalPropertyf("librain/glass_2/gravity_point/y"),
	gravity_factor = globalPropertyf("librain/glass_2/gravity_factor"),
	tp_x = globalPropertyf("librain/glass_2/thrust_point/x"),
	tp_y = globalPropertyf("librain/glass_2/thrust_point/y"),
	thrust_factor = globalPropertyf("librain/glass_2/thrust_factor"),
	max_thrust = globalPropertyf("librain/glass_2/max_thrust"),
	wp_x = globalPropertyf("librain/glass_2/wind_point/x"),
	wp_y = globalPropertyf("librain/glass_2/wind_point/y"),
	wind_factor = globalPropertyf("librain/glass_2/wind_factor"),
	wind_normal = globalPropertyf("librain/glass_2/wind_normal"),
	max_tas = globalPropertyf("librain/glass_2/max_tas"),	
	obj = globalPropertys("librain/glass_2/obj/filename"),
	loa = globalPropertyi("librain/glass_2/obj/load"),
	loaded = globalPropertyi("librain/glass_2/obj/loaded"),
}

local sideLeftGlass = {
	obj_posx = globalPropertyf("librain/glass_3/obj/pos_offset/x"),
	obj_posy = globalPropertyf("librain/glass_3/obj/pos_offset/y"),
	obj_posz = globalPropertyf("librain/glass_3/obj/pos_offset/z"),
	slant = globalPropertyf("librain/glass_3/slant_factor"),
	gp_x = globalPropertyf("librain/glass_3/gravity_point/x"),
	gp_y = globalPropertyf("librain/glass_3/gravity_point/y"),
	gravity_factor = globalPropertyf("librain/glass_3/gravity_factor"),
	tp_x = globalPropertyf("librain/glass_3/thrust_point/x"),
	tp_y = globalPropertyf("librain/glass_3/thrust_point/y"),
	thrust_factor = globalPropertyf("librain/glass_3/thrust_factor"),
	max_thrust = globalPropertyf("librain/glass_3/max_thrust"),
	wp_x = globalPropertyf("librain/glass_3/wind_point/x"),
	wp_y = globalPropertyf("librain/glass_3/wind_point/y"),
	wind_factor = globalPropertyf("librain/glass_3/wind_factor"),
	wind_normal = globalPropertyf("librain/glass_3/wind_normal"),
	max_tas = globalPropertyf("librain/glass_3/max_tas"),	
	obj = globalPropertys("librain/glass_3/obj/filename"),
	loa = globalPropertyi("librain/glass_3/obj/load"),
	loaded = globalPropertyi("librain/glass_3/obj/loaded"),
}

local rain = {
	numglass = globalPropertyi("librain/num_glass_use"),
	init = globalPropertyi("librain/initialize"),
	init_success = globalPropertyi("librain/init_success"),
	debug_draw = globalPropertyi("librain/debug_draw"),
	wipers = globalPropertyi("librain/wipers_visible"),
	verbose = globalPropertyi("librain/verbose"),
	is_inited = 0,
	is_loaded = 0,
	is_installed = 0
}


local z_obj = {
	obj0_name = globalPropertys("librain/z_depth_obj_0/filename"),
	obj0_load = globalPropertyi("librain/z_depth_obj_0/load"),
	obj0_loaded = globalPropertyi("librain/z_depth_obj_0/loaded"),
	obj1_name = globalPropertys("librain/z_depth_obj_1/filename"),
	obj1_load = globalPropertyi("librain/z_depth_obj_1/load"),
	obj1_loaded = globalPropertyi("librain/z_depth_obj_1/loaded"),
	obj2_name = globalPropertys("librain/z_depth_obj_2/filename"),
	obj2_load = globalPropertyi("librain/z_depth_obj_2/load"),
	obj2_loaded = globalPropertyi("librain/z_depth_obj_2/loaded"),
	obj3_name = globalPropertys("librain/z_depth_obj_3/filename"),
	obj3_load = globalPropertyi("librain/z_depth_obj_3/load"),
	obj3_loaded = globalPropertyi("librain/z_depth_obj_3/loaded"),
	obj4_name = globalPropertys("librain/z_depth_obj_4/filename"),
	obj4_load = globalPropertyi("librain/z_depth_obj_4/load"),
	obj4_loaded = globalPropertyi("librain/z_depth_obj_4/loaded"),
	obj5_name = globalPropertys("librain/z_depth_obj_5/filename"),
	obj5_load = globalPropertyi("librain/z_depth_obj_5/load"),
	obj5_loaded = globalPropertyi("librain/z_depth_obj_5/loaded"),
	obj6_name = globalPropertys("librain/z_depth_obj_6/filename"),
	obj6_load = globalPropertyi("librain/z_depth_obj_6/load"),
	obj6_loaded = globalPropertyi("librain/z_depth_obj_6/loaded"),
	obj7_name = globalPropertys("librain/z_depth_obj_7/filename"),
	obj7_load = globalPropertyi("librain/z_depth_obj_7/load"),
	obj7_loaded = globalPropertyi("librain/z_depth_obj_7/loaded"),
	obj8_name = globalPropertys("librain/z_depth_obj_8/filename"),
	obj8_load = globalPropertyi("librain/z_depth_obj_8/load"),
	obj8_loaded = globalPropertyi("librain/z_depth_obj_8/loaded"),
	obj9_name = globalPropertys("librain/z_depth_obj_9/filename"),
	obj9_load = globalPropertyi("librain/z_depth_obj_9/load"),
	obj9_loaded = globalPropertyi("librain/z_depth_obj_9/loaded"),
	obj10_name = globalPropertys("librain/z_depth_obj_10/filename"),
	obj10_load = globalPropertyi("librain/z_depth_obj_10/load"),
	obj10_loaded = globalPropertyi("librain/z_depth_obj_10/loaded"),
	obj11_name = globalPropertys("librain/z_depth_obj_11/filename"),
	obj11_load = globalPropertyi("librain/z_depth_obj_11/load"),
	obj11_loaded = globalPropertyi("librain/z_depth_obj_11/loaded"),
	obj12_name = globalPropertys("librain/z_depth_obj_12/filename"),
	obj12_load = globalPropertyi("librain/z_depth_obj_12/load"),
	obj12_loaded = globalPropertyi("librain/z_depth_obj_12/loaded"),
	obj0_posx = globalPropertyf("librain/z_depth_obj_0/pos_offset/x"),
	obj0_posy = globalPropertyf("librain/z_depth_obj_0/pos_offset/y"),
	obj0_posz = globalPropertyf("librain/z_depth_obj_0/pos_offset/z"),
	obj1_posx = globalPropertyf("librain/z_depth_obj_1/pos_offset/x"),
	obj1_posy = globalPropertyf("librain/z_depth_obj_1/pos_offset/y"),
	obj1_posz = globalPropertyf("librain/z_depth_obj_1/pos_offset/z"),
	obj2_posx = globalPropertyf("librain/z_depth_obj_2/pos_offset/x"),
	obj2_posy = globalPropertyf("librain/z_depth_obj_2/pos_offset/y"),
	obj2_posz = globalPropertyf("librain/z_depth_obj_2/pos_offset/z"),
	obj3_posx = globalPropertyf("librain/z_depth_obj_3/pos_offset/x"),
	obj3_posy = globalPropertyf("librain/z_depth_obj_3/pos_offset/y"),
	obj3_posz = globalPropertyf("librain/z_depth_obj_3/pos_offset/z"),
	obj4_posx = globalPropertyf("librain/z_depth_obj_4/pos_offset/x"),
	obj4_posy = globalPropertyf("librain/z_depth_obj_4/pos_offset/y"),
	obj4_posz = globalPropertyf("librain/z_depth_obj_4/pos_offset/z"),
	obj5_posx = globalPropertyf("librain/z_depth_obj_5/pos_offset/x"),
	obj5_posy = globalPropertyf("librain/z_depth_obj_5/pos_offset/y"),
	obj5_posz = globalPropertyf("librain/z_depth_obj_5/pos_offset/z"),
	obj6_posx = globalPropertyf("librain/z_depth_obj_6/pos_offset/x"),
	obj6_posy = globalPropertyf("librain/z_depth_obj_6/pos_offset/y"),
	obj6_posz = globalPropertyf("librain/z_depth_obj_6/pos_offset/z"),
	obj7_posx = globalPropertyf("librain/z_depth_obj_7/pos_offset/x"),
	obj7_posy = globalPropertyf("librain/z_depth_obj_7/pos_offset/y"),
	obj7_posz = globalPropertyf("librain/z_depth_obj_7/pos_offset/z"),
	obj8_posx = globalPropertyf("librain/z_depth_obj_8/pos_offset/x"),
	obj8_posy = globalPropertyf("librain/z_depth_obj_8/pos_offset/y"),
	obj8_posz = globalPropertyf("librain/z_depth_obj_8/pos_offset/z"),
	obj9_posx = globalPropertyf("librain/z_depth_obj_9/pos_offset/x"),
	obj9_posy = globalPropertyf("librain/z_depth_obj_9/pos_offset/y"),
	obj9_posz = globalPropertyf("librain/z_depth_obj_9/pos_offset/z"),
	obj10_posx = globalPropertyf("librain/z_depth_obj_10/pos_offset/x"),
	obj10_posy = globalPropertyf("librain/z_depth_obj_10/pos_offset/y"),
	obj10_posz = globalPropertyf("librain/z_depth_obj_10/pos_offset/z"),
	obj11_posx = globalPropertyf("librain/z_depth_obj_11/pos_offset/x"),
	obj11_posy = globalPropertyf("librain/z_depth_obj_11/pos_offset/y"),
	obj11_posz = globalPropertyf("librain/z_depth_obj_11/pos_offset/z"),
	obj12_posx = globalPropertyf("librain/z_depth_obj_12/pos_offset/x"),
	obj12_posy = globalPropertyf("librain/z_depth_obj_12/pos_offset/y"),
	obj12_posz = globalPropertyf("librain/z_depth_obj_12/pos_offset/z"),
}

local path = sasl.getAircraftPath()
--init librain
function init()
	if get(rain.init_success) == 0 then
		set(rain.verbose, 0)
		set(rain.wipers, 0)
		set(rain.debug_draw, 0)
		set(rain.numglass, 4)		
		set(frontLeftGlass.obj,path.."/objects/librain/WindowsFrontLeft.obj")
		set(frontLeftGlass.slant, 1.0)
		set(frontLeftGlass.gp_x, 0.5)
		set(frontLeftGlass.gp_y, 5.0)
		set(frontLeftGlass.gravity_factor, 1.0)
		set(frontLeftGlass.tp_x, -0.1)
		set(frontLeftGlass.tp_y, -0.5)
		set(frontLeftGlass.thrust_factor, 0.0)
		set(frontLeftGlass.max_thrust, 0)
		set(frontLeftGlass.wp_x, -0,1)
		set(frontLeftGlass.wp_y, -0.5)
		set(frontLeftGlass.wind_factor, 2.0)
		set(frontLeftGlass.wind_normal, 1.0)
		set(frontLeftGlass.max_tas, 90)		
		set(frontLeftGlass.obj_posx,0.0)
		set(frontLeftGlass.obj_posy,0.0)
		set(frontLeftGlass.obj_posz,0.0)
		set(frontLeftGlass.wiper_pivot_x, -0.07)
		set(frontLeftGlass.wiper_pivot_y, -0.05)
		set(frontLeftGlass.wiper_radius_inner, 0.39)
		set(frontLeftGlass.wiper_radius_outer, 1)
		set(frontLeftGlass.heat_tgt_temps, 600.0, 1)
		set(frontLeftGlass.loa, 1)
		
		set(frontRightGlass.obj,path.."/objects/librain/WindowsFrontRight.obj")
		set(frontRightGlass.slant, 1.0)
		set(frontRightGlass.gp_x, 0.5)
		set(frontRightGlass.gp_y, 5.0)
		set(frontRightGlass.gravity_factor, 1.0)
		set(frontRightGlass.tp_x, 1.1)
		set(frontRightGlass.tp_y, -0.5)
		set(frontRightGlass.thrust_factor, 0.0)
		set(frontRightGlass.max_thrust, 0)
		set(frontRightGlass.wp_x, 1.1)
		set(frontRightGlass.wp_y, -0.5)
		set(frontRightGlass.wind_factor, 2.0)
		set(frontRightGlass.wind_normal, 1.0)
		set(frontRightGlass.max_tas, 90)		
		set(frontRightGlass.obj_posx,0.0)
		set(frontRightGlass.obj_posy,0.0)
		set(frontRightGlass.obj_posz,0.0)
		set(frontRightGlass.wiper_pivot_x, 1.07)
		set(frontRightGlass.wiper_pivot_y, -0.05)
		set(frontRightGlass.wiper_radius_inner, 0.39)
		set(frontRightGlass.wiper_radius_outer, 1)
		set(frontRightGlass.heat_tgt_temps, 600.0, 1)
		set(frontRightGlass.loa, 1)		


		
		set(sideRightGlass.obj,path.."/objects/librain/WindowsSideRight.obj")
		set(sideRightGlass.obj_posx,0.0)
		set(sideRightGlass.slant, 1.0)
		set(sideRightGlass.gp_x, 0.5)
		set(sideRightGlass.gp_y, 5.0)
		set(sideRightGlass.gravity_factor, 1.0)
		set(sideRightGlass.tp_x, -5.0)
		set(sideRightGlass.tp_y, 0.5)
		set(sideRightGlass.thrust_factor, 0)
		set(sideRightGlass.max_thrust, 0)
		set(sideRightGlass.wp_x, -5.0)
		set(sideRightGlass.wp_y, 0.5)
		set(sideRightGlass.wind_factor, 2.0)
		set(sideRightGlass.wind_normal, 1.0)
		set(sideRightGlass.max_tas, 90)		
		set(sideRightGlass.obj_posx,0.0)
		set(sideRightGlass.obj_posy,0.0)
		set(sideRightGlass.obj_posz,0.0)
		set(sideRightGlass.loa, 1)
		
		set(sideLeftGlass.obj,path.."/objects/librain/WindowsSideLeft.obj")
		set(sideLeftGlass.obj_posx,0.0)
		set(sideLeftGlass.slant, 1.0)
		set(sideLeftGlass.gp_x, 0.5)
		set(sideLeftGlass.gp_y, 5.0)
		set(sideLeftGlass.gravity_factor, 1.0)
		set(sideLeftGlass.tp_x, 5.0)
		set(sideLeftGlass.tp_y, 0.5)
		set(sideLeftGlass.thrust_factor, 0)
		set(sideLeftGlass.max_thrust, 0)
		set(sideLeftGlass.wp_x, 5)
		set(sideLeftGlass.wp_y, 0.5)
		set(sideLeftGlass.wind_factor, 1.0)
		set(sideLeftGlass.wind_normal, 1.0)
		set(sideLeftGlass.max_tas, 90)		
		set(sideLeftGlass.obj_posx,0.0)
		set(sideLeftGlass.obj_posy,0.0)
		set(sideLeftGlass.obj_posz,0.0)
		set(sideLeftGlass.loa, 1)
		
		set(z_obj.obj0_name,path.."/objects/MiddleConsole.obj")
		set(z_obj.obj0_posx,0.0)
		set(z_obj.obj0_posy,0.0)
		set(z_obj.obj0_posz,0.0)
		set(z_obj.obj0_load, 1)
		set(z_obj.obj1_name,path.."/objects/SidePanels.obj")
		set(z_obj.obj1_posx,0.0)
		set(z_obj.obj1_posy,0.0)
		set(z_obj.obj1_posz,0.0)
		set(z_obj.obj1_load, 1)
		set(z_obj.obj2_name,path.."/objects/YokesPedals.obj")
		set(z_obj.obj2_posx,0.0)
		set(z_obj.obj2_posy,0.0)
		set(z_obj.obj2_posz,0.0)
		set(z_obj.obj2_load, 1)
		set(z_obj.obj3_name,path.."/objects/Seats.obj")
		set(z_obj.obj3_posx,0.0)
		set(z_obj.obj3_posy,0.0)
		set(z_obj.obj3_posz,0.0)
		set(z_obj.obj3_load, 1)
		set(z_obj.obj4_name,path.."/objects/Overhead.obj")
		set(z_obj.obj4_posx,0.0)
		set(z_obj.obj4_posy,0.0)
		set(z_obj.obj4_posz,0.0)
		set(z_obj.obj4_load, 1)
		set(z_obj.obj5_name,path.."/objects/CockpitFrame.obj")
		set(z_obj.obj5_posx,0.0)
		set(z_obj.obj5_posy,0.0)
		set(z_obj.obj5_posz,0.0)
		set(z_obj.obj5_load, 1)
		set(z_obj.obj6_name,path.."/objects/Instruments.obj")
		set(z_obj.obj6_posx,0.0)
		set(z_obj.obj6_posy,0.0)
		set(z_obj.obj6_posz,0.0)
		set(z_obj.obj6_load, 1)
		set(z_obj.obj7_name,path.."/objects/PassangerCabin.obj")
		set(z_obj.obj7_posx,0.0)
		set(z_obj.obj7_posy,0.0)
		set(z_obj.obj7_posz,0.0)
		set(z_obj.obj7_load, 1)
		set(z_obj.obj8_name,path.."/objects/liner_copilot.obj")
		set(z_obj.obj8_posx,-4.239768)
		set(z_obj.obj8_posy,0.64008)
		set(z_obj.obj8_posz,-0.240792)
		set(z_obj.obj8_load, 1)
		set(z_obj.obj9_name,path.."/objects/liner_pilot.obj")
		set(z_obj.obj9_posx,-4.239768)
		set(z_obj.obj9_posy,-0.249936)
		set(z_obj.obj9_posz,-0.240792)
		set(z_obj.obj9_load, 1)
		set(z_obj.obj10_name,path.."/objects/MainPanel.obj")
		set(z_obj.obj10_posx,0.0)
		set(z_obj.obj10_posy,0.0)
		set(z_obj.obj10_posz,0.0)
		set(z_obj.obj10_load, 1)
		set(z_obj.obj11_name,path.."/objects/Fuselage.obj")
		set(z_obj.obj11_posx,0.0)
		set(z_obj.obj11_posy,0.0)
		set(z_obj.obj11_posz,0.0)
		set(z_obj.obj11_load, 1)
		set(rain.init,1)
		end
	rain.is_inited = 1
end

function wiper()
frontLeftGlass.wiper_angle_dr = globalPropertyfa("sim/flightmodel2/misc/wiper_angle_deg")
frontRightGlass.wiper_angle_dr = globalPropertyfa("sim/flightmodel2/misc/wiper_angle_deg")

						if get(frontLeftGlass.wiper_speed) > 0 then							
							set(frontLeftGlass.wiperAngle, (math.rad(get(frontLeftGlass.wiper_angle_dr, 1)+33)))
							set(frontLeftGlass.wiper_is_moving, 1)	
						elseif get(frontLeftGlass.wiper_speed) == 0 and get(frontLeftGlass.wiper_angle_dr, 1) > 0.1 then
							set(frontLeftGlass.wiperAngle, (math.rad(get(frontLeftGlass.wiper_angle_dr, 1)+33)))
							set(frontLeftGlass.wiper_is_moving, 1)	
						else								
							set(frontLeftGlass.wiperAngle, 0)	
							set(frontLeftGlass.wiper_is_moving, 1)							
						end	
						
						
						if get(frontRightGlass.wiper_speed) > 0 then							
							set(frontRightGlass.wiperAngle, -1*(math.rad(get(frontRightGlass.wiper_angle_dr, 2)+33)))
							set(frontRightGlass.wiper_is_moving, 1)	
						elseif get(frontRightGlass.wiper_speed) == 0 and get(frontRightGlass.wiper_angle_dr, 2) > 0.1 then
							set(frontRightGlass.wiperAngle, (math.rad(get(frontRightGlass.wiper_angle_dr, 2)+33)))
							set(frontRightGlass.wiper_is_moving, 1)								
						else							
							set(frontRightGlass.wiperAngle, 0)								
							set(frontRightGlass.wiper_is_moving, 1)							
						end	
						
						if get(drf.windows_heat_dr) == 1 then
							set(frontLeftGlass.heat_zones , {0.0, 0.0, 1.0, 1.0}, 1, 4)
							set(frontRightGlass.heat_zones , {0.0, 0.0, 1.0, 1.0}, 1, 4)
						else
							set(frontLeftGlass.heat_zones , {0.0, 0.0, 0.0, 0.0}, 1, 4)
							set(frontRightGlass.heat_zones , {0.0, 0.0, 0.0, 0.0}, 1, 4)
						end
											
end


function onAvionicsDone()
	if get(rain.init) ~= nil then
		set(rain.init, 0)
		set(frontLeftGlass.loa, 0)
		set(frontRightGlass.loa, 0)
		set(sideRightGlass.loa, 0)
		set(sideLeftGlass.loa, 0)
	end
end

function update()	
	wiper()
	if get(rain.init) ~= nil then
		if rain.is_inited == 0 then init() end
		if get(rain.init_success) == 0 then
			if rain.is_loaded == 0 then
				set(rain.init, 1)					
				rain.is_loaded = 1
			else
				if get(drf.rain) ~= 0 and get(drf.external_view) == 0 then set(rain.init, 1) end
			end
		else
			if get(drf.rain) == 0 or get(drf.external_view) == 1 then
				if get(rain.init_success) == 1 then set(rain.init, 0) end
			end
		end
	end
end

function onPlaneCrash ()
	return 0
end