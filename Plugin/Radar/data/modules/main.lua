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
--main.lua
size = { 2048, 2048 }

dis = sasl.gl.createTexture(458 , 329)

addSearchPath(sasl.getXPlanePath ().."/Resources/bitmaps/interface")
addSearchPath(sasl.getXPlanePath ().."/Resources/bitmaps/interface11")

local popout_img = sasl.gl.loadImage("floating_window@1.5x.png", 27, 0, 28, 28)
local close_img = sasl.gl.loadImage("floating_window@1.5x.png", 0, 28, 26, 26)
local hide_ui = true

components = {
    Radar {},
    }

	
Radar_2D_context = contextWindow {
    name      = "Radar",
    position    = {50, 50, 1002, 1060},
    savePosition = true,  
    minimumSize = {1002/4, 1060/4},
    maximumSize = {1002, 1060},
    noDecore = false,
	customDecore = true,
	noBackground = true,
    resizeMode = SASL_CW_RESIZE_RIGHT_BOTTOM, 
	proportional = true,
    visible     = false,
	saveState = true,
        components = {
            Radar_2D {
                position    = {0, 0, 1002, 1060}
            }
          },
		  
	decoration = {
		headerHeight = 0 ,
			
			 main = {
				draw = function(w, h)-- draw  window  header...
					if hide_ui == false then
					sasl.gl.drawTexture(popout_img, w-20, h-20, 20, 20)
					sasl.gl.drawTexture(close_img, 0, h-20, 20, 20)
					end
				end, 
				
				onMouseMove = function(x, y, w, h)
					if y > h - 20 and y < h and Radar_2D_context:isPoppedOut() == false then
						hide_ui = false
					else
						hide_ui = true
					end
					
				end ,
				
				onMouseDown = function(x, y, w, h, button)
					if  Radar_2D_context:isPoppedOut() == false and button == MB_LEFT  then
						if y > h - 20 and y < h then
							if x > w - 20 then
								Radar_2D_context:setMode(SASL_CW_MODE_POPOUT)
							elseif x < 20 then
								Radar_2D_context:setIsVisible(false)
							end
						end					
					end

				end ,				
				
			}
	}	

}

local Radar2D_command = sasl.createCommand("custom/rdr4b/radar2D", "RDR-4B visible")
function Radar2D_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
  if 0 == phase then
    if Radar_2D_context:isVisible () then
      Radar_2D_context:setIsVisible(false)
    else
      Radar_2D_context:setIsVisible(true)
    end
  end
  return false
end

sasl.registerCommandHandler(Radar2D_command, 0, Radar2D_handler)

menu_master = sasl.appendMenuItem (PLUGINS_MENU_ID, "RDR-4B Weather Radar" )
menu_main = sasl.createMenu ("", PLUGINS_MENU_ID, menu_master)
menu_option = sasl.appendMenuItem(menu_main, "Toggle RDR-4B 2D pop up", function() 
                                                                        sasl.commandOnce(sasl.findCommand("custom/rdr4b/radar2D"))
                                                                        return false
                                                                        end)
																		
function draw()

    if Radar_2D_context:isVisible () then
	sasl.gl.getTargetTextureData(dis , 0, 0, 458 , 329)
    end

end
