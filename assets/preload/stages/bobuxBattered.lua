function onCreate()   
makeLuaSprite('fondoDestruido', 'backgrounds/Destruido', -800, -150);
addLuaSprite('fondoDestruido', false);
setCharacterX('boyfriend', 560);

makeLuaSprite('2','ready',40,320)
    scaleObject('2',1,1) 
    setObjectCamera('2', 'game')
    
    makeLuaSprite('1','set',40,320)
    scaleObject('1',1,1)  
    setObjectCamera('1', 'game')

    makeLuaSprite('Go','go',40,320)
    scaleObject('Go',1,1)  
    setObjectCamera('Go', 'game')   
end

function onStepHit()
if curStep == 1056 then
doTweenAlpha('adiosHUD', 'camHUD', 0, 0.3, 'linear');
end
if curStep == 1060 then
addLuaSprite('2',true)
doTweenZoom('Change Camera Zoom3', 'camGame', 0.9, 0.1, 'linear')
        runTimer('Ulizar p?',0.1)
        runTimer('Ready',0.3)
end
if curStep == 1064 then
addLuaSprite('1',true)
doTweenZoom('Change Camera Zoom3', 'camGame', 0.9, 0.1, 'linear')
        runTimer('GifTrif FNF YT XD',0.1)
        runTimer('Set',0.3)
end
if curStep == 1068 then
addLuaSprite('Go',true)
doTweenZoom('Change Camera Zoom3', 'camGame', 0.9, 0.1, 'linear')
        runTimer('Physik creó el PSYCH ENGINE :0',0.1)
        runTimer('Go',0.3)
end
if curStep == 1072 then
doTweenAlpha('holaHUD', 'camHUD', 1, 0.3, 'linear');
end
end

function opponentNoteHit()
cameraShake('game', 0.0075, 0.5)
cameraShake('hud', 0.0075, 0.5)
    health = getProperty('health')
    if getProperty('health') > 0.3 then
        setProperty('health', health- 0.017);
    end
end

function onTimerCompleted(tag)
   if tag == 'Ulizar p?' then
   doTweenZoom('Change Camera Zoom4', 'camGame', 0.65, 0.2, 'linear')
   end
   if tag == 'GifTrif FNF YT XD' then
   doTweenZoom('Change Camera Zoom6', 'camGame', 0.65, 0.2, 'linear')
   end
   if tag == 'Physik creó el PSYCH ENGINE :0' then
   doTweenZoom('Change Camera Zoom8', 'camGame', 0.65, 0.2, 'linear')
   end
   if tag == 'Ready' then
   doTweenAlpha('adios2', '2', 0, 0.3, 'linear');
   end
   if tag == 'Set' then
   doTweenAlpha('adios1', '1', 0, 0.3, 'linear');
   end
   if tag == 'Go' then
   doTweenAlpha('adiosGo', 'Go', 0, 0.2, 'linear');
   end
end