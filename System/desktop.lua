--[[
    bits-UI Desktop: A Desktop for bits-UI
    Copyright (C) 2020 Alee14

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
]]--

os.require("/System/apis/flib.lua")
local backgroundColour = 32768
local backgroundImage = "/home/.background"
local panelColour = 8192
local appTitle = "[Programs]"

function drawPanel()  	
    local time = os.time()
    local formattedTime = textutils.formatTime(time, false)
    term.setCursorPos(1,1)
    term.setBackgroundColor(panelColour)
    term.setTextColor(1)
    term.clearLine()
    term.setCursorPos(2, 1)
    print(appTitle)
    term.setCursorPos(44, 1)
    print(formattedTime)
  end

function drawDesktop()
    term.setBackgroundColor(backgroundColour)
    term.clear()
    bground = paintutils.loadImage(backgroundImage)
    paintutils.drawImage(bground,1,1)
    drawPanel()
end
--[[
    if fs.exists("/programs") then
end
]]

-- Initialize Desktop

drawDesktop()

while true do
local event, button, X, Y = os.pullEventRaw()
drawDesktop()
end