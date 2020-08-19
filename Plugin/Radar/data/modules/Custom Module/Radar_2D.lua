--
-- CDDL HEADER START
--
-- This file and its contents are supplied under the terms of the
-- Common Development and Distribution License ("CDDL"), version 1.0.
-- You may only use this file in accordance with the terms of version
-- 1.0 of the CDDL.
--
-- A full copy of the text of the CDDL should have accompanied this
-- source.  A copy of the CDDL is also available via the Internet at
-- http://www.illumos.org/license/CDDL.
--
-- CDDL HEADER END
--
--
-- Copyright 2020 Todor Radonov. All rights reserved.
--
size = {1002, 1060}


local brt_dr = globalPropertyf("custom/rdr4b/brightness")
local tilt_dr = globalPropertyf("custom/rdr4b/tilt")
local gain_dr = globalPropertyf("custom/rdr4b/gain")
local mode_dr = globalPropertyi("custom/rdr4b/mode")
local range_dr = globalPropertyi("custom/rdr4b/range")
local stab_dr = globalPropertyi("custom/rdr4b/stab")


local radar = sasl.gl.loadImage("radar.png", 0, 0, 1002, 1060)
local brt_knob = sasl.gl.loadImage("radar.png", 1067, 295, 65, 65)
local gain_knob = sasl.gl.loadImage("radar.png", 1067, 405, 65, 65)
local tilt_knob = sasl.gl.loadImage("radar.png", 1029, 510, 141, 141)
local mode_knob = sasl.gl.loadImage("radar.png", 1029, 685, 141, 141)
local range_knob = sasl.gl.loadImage("radar.png", 1029, 854, 141, 141)
local stab_butt = sasl.gl.loadImage("radar.png", 1080, 212, 39, 32)

local mouse_timer = sasl.createTimer ()

components = {
    textureLit {
      position = {148, 223, 706, 507},
      image =     get(dis),
      brt2 = 1, 
      x = 706,
      y = 507,
    },  
	
    texture {
      position = {0, 0, 1002, 1060},
      image =     get(radar),
      brt2 = 1,
    },  	
	
    textureRotate {
  
      position = {481, 854, 141, 141},
      image = get(mode_knob),
      angle = function()
                  return get(mode_dr)*35
                end,
      brt2 = 1,
    },
	
    textureRotate {
  
      position = {170, 854, 141, 141},
      image = get(range_knob),
      angle = function()
                  return get(range_dr)*40
                end,
      brt2 = 1,
    },
	
    textureRotate {
  
      position = {821, 854, 141, 141},
      image = get(tilt_knob),
      angle = function()
                  return get(tilt_dr)*10
                end,
      brt2 = 1,
    },
    
    textureRotate {
  
      position = {50, 854, 65, 65},
      image = get(brt_knob),
      angle = function()
                  return get(brt_dr)*270
                end,
      brt2 = 1,
    },
    
    textureRotate {
  
      position = {373, 867, 65, 65},
      image = get(gain_knob),
      angle = function()
                  return get(gain_dr)*270
                end,
     brt2 = 1,
    },  
    
    texture {
  
      position = function() 
        if get(stab_dr) == 1 then return {686, 839, 40, 33}
         else return {654, 839, 40, 33}
         end
      end,
      image = get(stab_butt),
      brt2 = 1,
    },
    
    clickable {
		position = {148, 223, 706, 507},
    
		cursor = {
		  x =  -15.5,
		  y =  -16.5,
		  width = 31,
		  height = 33,
		  shape = sasl.gl.loadImage("mc_handle.png"),
		  hideOSCursor = true
		  },
    
		onMouseDown = function(component , x, y, button , parentX , parentY)
		  Radar_2D_context:setIsVisible(false)
		  return false
		end , 
    },    
	
    clickable {
    position = {647, 830, 87, 50},
		cursor = {
		  x =  -15.5,
		  y =  -16.5,
		  width = 31,
		  height = 33,
		  shape = sasl.gl.loadImage("mc_handle.png"),
		  hideOSCursor = true
		  },   
    onMouseDown = function(component , x, y, button , parentX , parentY)
      if get(stab_dr) == 1 then set(stab_dr, 0)
	  elseif get(stab_dr) == 0 then set(stab_dr, 1)
	  end
      
      return false
    end  
    },
	
	
    clickable {
    position = {482, 857, 70, 136 },
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_lft.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(mode_dr,1, 0, 4)
      elseif clicks < 0 then set_dr_limit(mode_dr,-1, 0, 4)
	  end
      
      return false
    end,
	
    onMouseDown = function(component , x, y, button , parentX , parentY)
		set_dr_limit(mode_dr,-1, 0, 4)
      return false
    end
    },
	
    clickable {
    position = {552, 857, 70, 136  },
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_rgt.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(mode_dr,1, 0, 4)
      elseif clicks < 0 then set_dr_limit(mode_dr,-1, 0, 4)
	  end      
      return false
    end,
    onMouseDown = function(component , x, y, button , parentX , parentY)
      set_dr_limit(mode_dr,1, 0, 4)
      
      return false
    end    
    },
	
    clickable {
    position = {170, 857, 70, 136 },
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_lft.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(range_dr,1, 0, 5)
      elseif clicks < 0 then set_dr_limit(range_dr,-1, 0, 5)
	  end      
      return false
    end,
    onMouseDown = function(component , x, y, button , parentX , parentY)
		set_dr_limit(range_dr,-1, 0, 5)
      
      return false
    end    
    },
	
    clickable {
    position = {240, 857, 70, 136  },
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_rgt.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(range_dr,1, 0, 5)
      elseif clicks < 0 then set_dr_limit(range_dr,-1, 0, 5)
 	  end     
      return false
    end,
    onMouseDown = function(component , x, y, button , parentX , parentY)
      set_dr_limit(range_dr,1, 0, 5)
      
      return false
    end    
    },
	
   clickable {
    position = {822, 857, 70, 136},
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_lft.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(tilt_dr, 0.1, -15, 15)
      elseif clicks < 0 then set_dr_limit(tilt_dr, -0.1, -15, 15)
      end
      
      return false
    end,
    onMouseHold = function(component , x, y, button , parentX , parentY)
      set_dr_limit_timeout(tilt_dr, -0.1, -15, 15)
      return false
    end,  	
    onMouseDown = function(component , x, y, button , parentX , parentY)
      set_dr_limit(tilt_dr, -0.1, -15, 15)
	  sasl.startTimer(mouse_timer)
      return false
    end,  
  	onMouseUP = function(component , x, y, button , parentX , parentY)
		sasl.stopTimer(mouse_timer)
	end,	
    },
	
    clickable {
    position = {892, 857, 70, 136  },
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_rgt.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(tilt_dr, 0.1, -15, 15)
      elseif clicks < 0 then set_dr_limit(tilt_dr, -0.1, -15, 15)
 	  end     
      return false
    end,
    onMouseHold = function(component , x, y, button , parentX , parentY)
      set_dr_limit_timeout(tilt_dr, 0.1, -15, 15)
      return false
    end,  
    onMouseDown = function(component , x, y, button , parentX , parentY)
      set_dr_limit(tilt_dr, 0.1, -15, 15)
	  sasl.startTimer(mouse_timer)
      return false
    end,
 	onMouseUP = function(component , x, y, button , parentX , parentY)
		sasl.resetTimer(mouse_timer)
	end,	
    },
	
   clickable {
    position = {365, 862, 40, 74 },
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_lft.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(gain_dr, 0.05, 0, 1)
      elseif clicks < 0 then set_dr_limit(gain_dr, -0.05, 0, 1)
      end
      
      return false
    end,
    onMouseHold= function()
      set_dr_limit_timeout(gain_dr, -0.05, 0, 1)
      return false
    end,
    onMouseDown = function(component , x, y, button , parentX , parentY)
      set_dr_limit(gain_dr, -0.05, 0, 1)
	  sasl.startTimer(mouse_timer)
      return false
    end,	
 	onMouseUP = function(component , x, y, button , parentX , parentY)
		sasl.resetTimer(mouse_timer)
	end,
    },
	
    clickable {
    position = {405, 862, 40, 74},
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_rgt.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(gain_dr, 0.05, 0, 1)
      elseif clicks < 0 then set_dr_limit(gain_dr, -0.05, 0, 1)
      end
      
      return false
    end,
    onMouseHold = function(component , x, y, button , parentX , parentY)
      set_dr_limit_timeout(gain_dr, 0.05, 0, 1)
      return false
    end,    	
    onMouseDown = function(component , x, y, button , parentX , parentY)
      set_dr_limit(gain_dr, 0.05, 0, 1)
	  sasl.startTimer(mouse_timer)
      return false
    end,
 	onMouseUP = function(component , x, y, button , parentX , parentY)
		sasl.resetTimer(mouse_timer)
	end,
    },
	
   clickable {
    position = {42, 850, 40, 74},
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_lft.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(brt_dr,0.05, 0, 1)
      elseif clicks < 0 then set_dr_limit(brt_dr, -0.05, 0, 1)
      end
      
      return false
    end,
    onMouseHold = function(component , x, y, button , parentX , parentY)
      set_dr_limit_timeout(brt_dr, -0.05, 0, 1)
      return false
    end,   	
    onMouseDown = function(component , x, y, button , parentX , parentY)
      set_dr_limit(brt_dr, -0.05, 0, 1)
	  sasl.startTimer(mouse_timer)
      return false
    end,
 	onMouseUP = function(component , x, y, button , parentX , parentY)
		sasl.resetTimer(mouse_timer)
	end,
    },
	
    clickable {
    position = {83, 850, 40, 74},
    
    cursor = {
      x =  -16,
      y =  -23.5,
      width = 32,
      height = 47,
      shape = sasl.gl.loadImage("mc_rot3_rgt.png"),
      hideOSCursor = true
      },
    
    onMouseWheel = function(x,y,w,h,r,t,clicks)
      if clicks > 0 then set_dr_limit(brt_dr, 0.05, 0, 1)
      elseif clicks < 0 then set_dr_limit(brt_dr, -0.05, 0, 1)
      end
      
      return false
    end,
    onMouseHold = function(component , x, y, button , parentX , parentY)
      set_dr_limit_timeout(brt_dr, 0.05, 0, 1)
      return false
    end,   	
    onMouseDown = function(component , x, y, button , parentX , parentY)
      set_dr_limit(brt_dr, 0.05, 0, 1)
	  sasl.startTimer(mouse_timer)
      return false
    end,
	onMouseUP = function(component , x, y, button , parentX , parentY)
		sasl.resetTimer(mouse_timer)
	end,
    },

}

function set_dr_limit(dr, step, limit_low, limit_hi)
	local value = get(dr)
	value = value + step
	if value >= limit_low and value <= limit_hi then
		set(dr, value)
	else
		if step > 0 then
			set(dr, limit_hi)
		else
			set(dr, limit_low)
		end
	end
end

function set_dr_limit_timeout(dr, step, limit_low, limit_hi)
	if sasl.getElapsedMicroseconds(mouse_timer) >= 500 then
		local value = get(dr)
		value = value + step
		if value >= limit_low and value <= limit_hi then
			set(dr, value)
		else
			if step > 0 then
				set(dr, limit_hi)
			else
				set(dr, limit_low)
			end
		end
	end
end


function draw()

    if Radar_2D_context:isVisible () then
	sasl.gl.drawRectangle(148, 223, 706, 507, {0 ,0 ,0 ,1})
    drawAll(components)
    end

end
