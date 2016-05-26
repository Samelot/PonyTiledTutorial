-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local tiled = require "com.ponywolf.ponytiled"
local mapData = require "demo"
local physics = require "physics"

display.setDefault("background", 0.2 )

physics.start()
--physics.setDrawMode( "hybrid" ) 

local map = tiled.new(mapData)
map.x,map.y = display.contentCenterX - map.designedWidth/2, display.contentCenterY - map.designedHeight/2

local brick = map:findObject("topRight")
--brick.anchorX = 0.5
--brick.anchorY = 0.5
--brick:translate(brick.width/2, -brick.height/2)
transition.to(brick, {rotation = 360, delta = true, iterations = -1})

--map:extend("dragable")
