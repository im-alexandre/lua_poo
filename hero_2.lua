Hero = {}

function Hero:new()
    instance = {
        life = 100,
        mana = 50,
    }

   function instance:damage(value)
        self.life = self.life - value
    end

    return instance
end

return Hero
