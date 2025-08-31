local love = require "love"
local Player = require "Player"
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
    local show_debugging = true;
    player = Player(show_debugging);
end


function love.update(dt)
    mouse_x , mouse_y = love.mouse.getPosition()
  
    
end


function love.draw()
    love.graphics.printf("FPS :" ..love.timer.getFPS(),fonts.medium.font,10,love.graphics.getHeight()-30,love.graphics.getWidth())
    player:draw()
end