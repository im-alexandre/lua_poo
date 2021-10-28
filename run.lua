Hero = require('hero')

knight = Hero:new()
wizard = Hero:new()

--knight.life = nil
knight.life = false

print("Vida do cavalheiro: " .. tostring(knight.life))
