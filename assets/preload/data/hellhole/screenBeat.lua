local BeatPorcent = 0
local BeatStyle = 0
local BeatStrentghGame = 0.07
local BeatStrentghHUD = 0.07

local Beated = false

function onStepHit()
    if curStep/4 % BeatPorcent == 0 then
        if BeatStyle == 0 then
            if Beated == false then
                Beated = true
                triggerEvent('Add Camera Zoom',BeatStrentghGame,BeatStrentghHUD)
            end
        elseif BeatStyle == 1 then
            if (curStep/4) % 4 ~= 0 then
                if  curStep/4 % BeatPorcent == 0 and Beated == false then
                    triggerEvent('Add Camera Zoom',BeatStrentghGame  * BeatValue,BeatStrentghHUD * BeatValue)
                    BeatValue = BeatValue * -1
                    Beated = true
                end
            else
                if (curStep/4) % BeatPorcent == 0 and Beated == false then
                    triggerEvent('Add Camera Zoom',BeatStrentghGame * BeatValue + (0.025 * BeatValue),BeatStrentghHUD * BeatValue + (0.03 * BeatValue))
                    BeatValue = BeatValue * -1
                    Beated = true
                end
            end
        end
    else
        Beated = false
    end
if curStep == 400 then
            BeatPorcent = 1
            BeatStyle = 0
    end
if curStep == 528 then
            BeatPorcent = -2
            BeatStyle = 0
    end
if curStep == 784 then
            BeatPorcent = 1
            BeatStyle = 0
    end
if curStep == 1040 then
            BeatPorcent = -2
            BeatStyle = 0
    end
if curStep == 1296 then
            BeatPorcent = 0
            BeatStyle = 0
    end
if curStep == 1344 then
            BeatPorcent = -2
            BeatStyle = 0
    end
if curStep == 1472 then
            BeatPorcent = 1
            BeatStyle = 0
    end
if curStep == 1872 then
            BeatPorcent = 0
            BeatStyle = 0
    end
if curStep == 2000 then
            BeatPorcent = -2
            BeatStyle = 0
    end
if curStep == 2384 then
            BeatPorcent = 0
            BeatStyle = 0
    end
if curStep == 2640 then
            BeatPorcent = -2
            BeatStyle = 0
    end
if curStep == 2912 then
            BeatPorcent = 1
            BeatStyle = 0
    end
if curStep == 3424 then
            BeatPorcent = -2
            BeatStyle = 0
    end
if curStep == 3552 then
            BeatPorcent = 0
            BeatStyle = 0
    end
end
