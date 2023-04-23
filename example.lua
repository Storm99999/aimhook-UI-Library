loadstring(game:HttpGet('https://GANGofGANG.gog-best.repl.co/updates/UI.lua'))() -- UI Library

local library = (aimhook and aimhook.library or nil);

library:FSetWindow('AIMHOOK', game.Players.LocalPlayer.Name, 'inf')--inf is the day the license will expire for yall paid mfs
library:RemoveBeta() -- call this to remove my testing stuff

--[[
    Here Are The Tabs you can use:

    Aimbot
    Bypasses
    Misc
    AntiAim
    Player

    Yeah, They're hardcoded because this isn't meant for public use at all, but you CAN infact modify it
    by going to the ui lib link, and opening up studio then using the rbxassetid, to get the ui in your roblox place
    and then you can modify it as much as you want!
]]

library:FSetSection('Silent Aim', 'Aimbot')--creates a section for silentaim

library:FSetToggle('enabled', 'flag_Silent', 'Silent Aim')-- first is the name, 2nd is the flag which will be used to determine wether the toggle is true or false, 3rd is the section u wanna put the toggle in.
library:FSetColorPicker('enabled', 'fovColor') -- add a color picker to the toggle above !!
library:FSetSlider('FOV Radius', 'FOV', 'Silent Aim') -- same thing that is with toggles
library:FSetDropdown({"Head", "UpperTorso"}, 'aimpart', 'Silent Aim') -- first items, 2nd the flag, 3rd the section
library:FSetButton('kill all', function()
    print'Hello'
end)

-- you can access flags with "library.Constants" they're all stored there
while task.wait() do
    if library.Constants.flag_Silent then
        print('silent aiming onto: ...')
    end

    warn(library.Constants.fovColor);
    warn(library.Constants.FOV)
end
