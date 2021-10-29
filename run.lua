local Wizard = require('wizard')
local Knight = require('knight')
local Fusion = require('fusion')

local knight = Knight:new()
local wizard = Wizard:new()
local fusion = Fusion:new()

knight:damage(10)
wizard:damage(10)

print("knight: ")
print(" - strength: " .. tostring(knight.strength))
print(" - intelligence: " .. tostring(knight.intelligence))
print("----------\n")

print("wizard: ")
print(" - strength: " .. tostring(wizard.strength))
print(" - intelligence: " .. tostring(wizard.intelligence))
print("----------\n")

print("fusion: ")
print(" - strength: " .. tostring(fusion.strength))
print(" - intelligence: " .. tostring(fusion.intelligence))
print("----------\n")
