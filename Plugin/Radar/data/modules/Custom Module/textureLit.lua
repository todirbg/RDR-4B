-- draws texture independed of cockpit lighting system

-- no default texture
defineProperty("image")
defineProperty("brt2")
defineProperty("x")
defineProperty("y")

local clr = get(brt2)
function draw(self)
    sasl.gl.drawTexture(get(image), 0, 0, get(x), get(y), {clr ,clr ,clr})
end


