Hero = {}

Hero.new = function()
    instance = {
        life = 100,
        mana = 50,
    }

    instance.damage = function(value)
        instance.life = instance.life - value
    end

    return instance
end

return Hero
