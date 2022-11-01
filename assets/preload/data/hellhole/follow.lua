
local xx = 400;--Enemigo
local yy = 550;--Enemigo
local xx2 = 900;--Tu p
local yy2 = 670;--Tu p
local ofs = 60;
local followchars = true;
local del = 0;
local del2 = 0;

function onStepHit()
if curStep == 1 then
doTweenZoom('Change Camera Zoom', 'camGame', 1.1, 9.5, 'linear')--Detalles q hacen mejor los Ports(Nickobelit)
end
if curStep == 1312 then
xx = 600;
yy = 240
end
if curStep == 1872 then
xx = 400;
yy = 550
end
end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
        if curStep < 400 then
            setProperty('defaultCamZoom',0.75)
            else
            setProperty('defaultCamZoom',0.85)
            end
         if curStep > 527 then
            setProperty('defaultCamZoom',0.75)
            end
         if curStep > 783 then
            setProperty('defaultCamZoom',0.8)
            end
         if curStep > 1039 then
            setProperty('defaultCamZoom',0.75)
            end
         if curStep > 1341 then
           setProperty('defaultCamZoom',0.6)
           end
        if curStep > 1871 then
           setProperty('defaultCamZoom',0.8)
end
        if curStep > 2384 then
         setProperty('defaultCamZoom',1.1)
         end
        if curStep > 2896 then
           setProperty('defaultCamZoom',0.8)
        end
       if curStep > 3424 then
         setProperty('defaultCamZoom',1.1)
         end 
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'hey' then
                triggerEvent('Camera Follow Pos',xx - 130,yy)
            end
        else
            if curStep <  1855  then
            setProperty('defaultCamZoom',1)
            end
            if curStep > 1855 then
           setProperty('defaultCamZoom',0.5)
           end
         if curStep > 1872 then
          setProperty('defaultCamZoom',1)
          end
         if curStep > 2384 then
         setProperty('defaultCamZoom',1.1)
         end
          if curStep > 2896 then
           setProperty('defaultCamZoom',1)
        end
         if curStep > 3424 then
         setProperty('defaultCamZoom',1.1)
         end 
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
     
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end