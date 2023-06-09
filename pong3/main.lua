push = require "push"

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 780

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

PADDLE_SPEED = 200

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    math.randomseed(os.time())


    smallFont = love.graphics.newFont('font.ttf', 8)

    love.graphics.setFont(smallFont)

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizale = false,
        vsync = true

    })

    player1Y = 30
    player2Y = VIRTUAL_HEIGHT - 50

    
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()

    end
end

function love.draw()
    push:apply('start')

    love.graphics.clear(40/255, 45/255, 52/255, 255/255)

    love.graphics.printf("Hello World!", 0, 20, VIRTUAL_WIDTH, 'center')

    love.graphics.rectangle('fill', 10, 30, 5, 20)

    love.graphics.rectangle('fill', VIRTUAL_WIDTH - 10, VIRTUAL_HEIGHT - 50, 5, 20)

    love.graphics.rectangle('fill', VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)

    push:apply('end')
end