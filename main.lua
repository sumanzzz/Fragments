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
    love.mouse.setVisible(false)
    _G.mouse_x , _G.mouse_y = 0,0
end


function love.update(dt)
    mouse_x , mouse_y = love.mouse.getPosition()
    print(mouse_x,mouse_y)
    
end


function love.draw()
    love.graphics.printf("FPS :" ..love.timer.getFPS(),fonts.medium.font,10,love.graphics.getHeight()-30,love.graphics.getWidth())
end