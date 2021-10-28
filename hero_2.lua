local Hero = {}

function Hero:new(attributes)
    local instance = {
        mana = 50
    }

    local life = 100

    function instance:get_life()
        return life
    end

    local function set_life(value)
        if value > 100 then
            life = 100
        elseif value < 0 then
            life = 0
        else
            life = value
        end
    end

    function instance:increase_all(value)
        life = life + value
        self.mana = self.mana + value
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
        set_life(life - value)
    end

   function instance:heal(value)
        self:set_life(life + value)
    end

    return instance
end

return Hero
