local love = require "love"
local fonts = {
    small = {
        font = love.graphics.getFont(16),
        size = 16
    },
    medium = {
        font = love.graphics.getFont(24),
        size = 24
    },
    large = {
        font = love.graphics.getFont(60),
        size = 60
    }
}

function love.load()
    
end


function love.update(dt)
    
end


function love.draw()
    love.graphics.printf("FPS :" ..love.timer.getFPS(),fonts.medium.font,10,love.graphics.getHeight()-30,love.graphics.getWidth())
end