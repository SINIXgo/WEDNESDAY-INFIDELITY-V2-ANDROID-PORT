 function onCreate()
    makeLuaSprite('bgSUS', 'backgrounds/sus/bg', -550,-300)
    addLuaSprite('bgSUS', false)
    
    makeLuaSprite('frontSUS', 'backgrounds/sus/front bg', -550,-300)
    addLuaSprite('frontSUS', false)   
    
    makeLuaSprite('black1','',-500,0)
   makeGraphic('black1',1280,720,'000000')
   setProperty('black1.alpha',1)
	setObjectCamera("black1", 'camGame')
	addLuaSprite('black1', true);
	scaleObject('black1', 5.5, 5.5)
	
		setProperty('gfGroup.visible', false);
    setProperty('camHUD.alpha', 0);
    setProperty('defaultCamZoom',1)
end


function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep == 32 then
doTweenAlpha('wenasHUD', 'camHUD', 1, 2, 'linear');
end
if curStep == 64 then
doTweenAlpha('adiosBlack', 'black1', 0, 6.5, 'linear');
runTimer('adiosBlackPart2XD',6.5)
doTweenZoom('Change Camera Zoom', 'camGame', 0.67, 6.5, 'linear')
end
if curStep == 1156 then
doTweenZoom('Change Camera Zoom', 'camGame', 1.1, 0.3, 'linear')
end
if curStep == 1159 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.67, 0.3, 'linear')
end
if curStep == 1184 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.77, 0.3, 'linear')
end
if curStep == 1188 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.87, 0.3, 'linear')
end
if curStep == 1192 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.97, 0.3, 'linear')
end
if curStep == 1196 then
doTweenZoom('Change Camera Zoom', 'camGame', 1.17, 0.3, 'linear')
end
if curStep == 1200 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.67, 0.3, 'linear')
end
if curStep == 1220 then
doTweenZoom('Change Camera Zoom', 'camGame', 1.1, 0.3, 'linear')
end
if curStep == 1223 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.67, 0.3, 'linear')
end
if curStep == 1248 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.77, 0.3, 'linear')
end
if curStep == 1252 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.87, 0.3, 'linear')
end
if curStep == 1256 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.97, 0.3, 'linear')
end
if curStep == 1260 then
doTweenZoom('Change Camera Zoom', 'camGame', 1.17, 0.3, 'linear')
end
if curStep == 1264 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.67, 0.3, 'linear')
end
if curStep == 1288 then
doTweenZoom('Change Camera Zoom', 'camGame', 1.1, 0.3, 'linear')
end
if curStep == 1290 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.67, 0.3, 'linear')
end
if curStep == 1292 then
doTweenZoom('Change Camera Zoom', 'camGame', 1.1, 0.3, 'linear')
end
if curStep == 1294 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.67, 0.3, 'linear')
end
if curStep == 1320 then
doTweenZoom('Change Camera Zoom', 'camGame', 1.1, 0.3, 'linear')
end
if curStep == 1322 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.67, 0.3, 'linear')
end
if curStep == 1324 then
doTweenZoom('Change Camera Zoom', 'camGame', 1.1, 0.3, 'linear')
end
if curStep == 1326 then
doTweenZoom('Change Camera Zoom', 'camGame', 0.67, 0.3, 'linear')
end
if curStep == 2176 then
setProperty('camGame.alpha', 0);
end
if curStep == 2208 then
doTweenAlpha('adiosHUD', 'camHUD', 0, 1, 'linear');
end
end

function onTimerCompleted(tag)
	if tag == 'adiosBlackPart2XD' then
        removeLuaSprite('black',true) 
end
end
