 function onCreate()
    makeLuaSprite('bgSUS', 'backgrounds/sus/bg', -550,-300)
    addLuaSprite('bgSUS', false)
    
    makeLuaSprite('frontSUS', 'backgrounds/sus/front bg', -550,-300)
    addLuaSprite('frontSUS', false)   
    setProperty('gfGroup.visible', false);
end

function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep == 780 then
doTweenAlpha('adiosJuego', 'camGame',0, 15, 'linear');
end
end

