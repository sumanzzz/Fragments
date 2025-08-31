local love = require "love"

function Player(debugging)
    local SHIP_SIZE = 30
    local VIEW_ANGLE = math.rad(90)
    debugging = debugging or false
    return{
        x = love.graphics.getWidth() / 2,
        y = love.graphics.getHeight() / 2,
        radius = SHIP_SIZE/2;
        angle = VIEW_ANGLE,
        rotation = 0,
        thrust ={
            x = 0,
            y = 0,
            speed = 0;
        },

        draw = function(self)
            local opacity = 1
            love.graphics.setColor(1,1,1,1)

            love.graphics.polygon(
                "line",self.x + ((4/2)*self.radius)+math.cos(self.angle),
                self.x - ((4/2)*self.radius)+math.sin(self.angle),
                self.x - self.radius * (2/3 * math.cos(self.angle)+math.sin(self.angle)),
                self.y + self.radius * (2/3 * math.sin(self.angle)-math.cos(self.angle)),
                self.x - self.radius * (2/3 * math.cos(self.angle)-math.sin(self.angle)),
                self.y + self.radius * (2/3 * math.sin(self.angle)+math.cos(self.angle))
        )
            
        end
    }
end
return Player