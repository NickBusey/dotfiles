local mouseCircle = nil
local mouseCircleTimer = nil

function mouseHighlight()
    -- Delete an existing highlight if it exists
    if mouseCircle then
        mouseCircle:delete()
        if mouseCircleTimer then
            mouseCircleTimer:stop()
        end
    end
    -- Get the current co-ordinates of the mouse pointer
    mousepoint = hs.mouse.getAbsolutePosition()
    -- Prepare a big red circle around the mouse pointer
    mouseCircle = hs.drawing.circle(hs.geometry.rect(mousepoint.x-40, mousepoint.y-40, 80, 80))
    mouseCircle:setStrokeColor({["red"]=1,["blue"]=1,["green"]=0,["alpha"]=1})
    mouseCircle:setFill(false)
    mouseCircle:setStrokeWidth(0)
    mouseCircle:show()

    -- Set a timer to delete the circle after 3 seconds
    mouseCircleTimer = hs.timer.doAfter(.1, function() mouseCircle:setStrokeWidth(1) end)
    mouseCircleTimer = hs.timer.doAfter(.2, function() mouseCircle:setStrokeWidth(3) end)
    mouseCircleTimer = hs.timer.doAfter(.3, function() mouseCircle:setStrokeWidth(6) end)
    mouseCircleTimer = hs.timer.doAfter(.4, function() mouseCircle:setStrokeWidth(8) end)
    mouseCircleTimer = hs.timer.doAfter(.5, function() mouseCircle:setStrokeWidth(10) end)
    mouseCircleTimer = hs.timer.doAfter(1, function() mouseCircle:delete() end)
end
hs.hotkey.bind({"cmd","alt","shift"}, "L", mouseHighlight)

--hs.hotkey.bind({},"H", function()
--	hs.tabs.enableForApp(hs.application.frontmostApplication())
--end)


watcher = hs.usb.watcher.new(function()
    local devices = hs.usb.attachedDevices()
    local gotDasKeyboard = false
    for key, value in pairs(devices) do
        if value.productName == "Das Keyboard" then
            gotDasKeyboard = true
        end
    end
    if gotDasKeyboard == true then
        hs.execute('blueutil on', true)
    else
        hs.execute('blueutil off', true)
    end
end)
watcher:start()

