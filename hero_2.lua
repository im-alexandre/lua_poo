local Hero = {}

function Hero:new(attributes)
    local instance = {}

    local life = 100

    function instance:get_life()
        return life
    end

    function instance:set_life(value)
        if value > 100 then
            life = 100
        elseif value < 0 then
            life = 0
        else
            life = value
        end
    end

    if attributes then
        if attributes.life then
            instance.life = attributes.life
        end

        if attributes.mana then
            instance.mana = attributes.mana
        end
    end

   function instance:damage(value)
        self:set_life(life - value)
    end

   function instance:heal(value)
        self:set_life(life + value)
    end

    return instance
end

return Hero
