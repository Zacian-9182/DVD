function love.load()
love.window.maximize()
love.window.setTitle("[échap] pour quiter")
PositionLogoX = 100
PositionLogoY = 100 
LargeurLogo = 100
HauteurLogo = 50
LargeurEcran = love.graphics.getWidth()
HauteurEcran = love.graphics.getHeight()
VitesseX = 5
VitesseY = 5
color = 255,255,255
end

function love.update()
PositionLogoX = PositionLogoX + VitesseX
PositionLogoY = PositionLogoY + VitesseY
if PositionLogoX >= LargeurEcran - LargeurLogo then VitesseX = VitesseX - VitesseX - VitesseX end
if PositionLogoY >= HauteurEcran - HauteurLogo then VitesseY = VitesseY - VitesseY - VitesseY end
if PositionLogoY <= 0 then VitesseY = VitesseY - VitesseY - VitesseY end
if PositionLogoX <= 0 then VitesseX = VitesseX - VitesseX - VitesseX end
end

function love.draw()
    love.graphics.setColor(0,255,255)
    love.graphics.rectangle("fill", PositionLogoX, PositionLogoY, LargeurLogo, HauteurLogo)
    love.graphics.print("[W] permet de ralentire le logo", 0, 0, 0)
    love.graphics.print("[X] permet d'accelerer le logo", 0,15, 0)
    love.graphics.print("Vitesse X", 0,30, 0)
    love.graphics.print(VitesseX, 0,45, 0)
    love.graphics.print("Vitesse Y", 0,60, 0)
    love.graphics.print(VitesseY, 0,75, 0)
    love.graphics.print("[C] pour réinitialiser la vitesse", 0,100, 0)
end

function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
       love.event.quit()
    end
    
    if key == "w" then
        VitesseX = VitesseX - 1
        VitesseY = VitesseY - 1
    end
    if key == "x" then
        VitesseX = VitesseX + 1
        VitesseY = VitesseY + 1
    end
    if key == "c" then
        VitesseX = 5
        VitesseY = 5 end
end