Hero = {}

function Hero:new(attributes)
    instance = {
        life = 100,
        mana = 50,
    }

    if attributes then
        if attributes.life then
            instance.life = attributes.life
        end

        if attributes.mana then
            instance.mana = attributes.mana
        end
    end

   function instance:damage(value)
        self.life = self.life - value
    end

    return instance
end

return Hero
