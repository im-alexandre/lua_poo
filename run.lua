local Wizard = require('wizard')
local Knight = require('knight')

local knight = Knight:new()
local wizard = Wizard:new()

knight:damage(10)
wizard:damage(10)

print("knight: " .. knight:get_life())
print("wizard: " .. wizard:get_life())
