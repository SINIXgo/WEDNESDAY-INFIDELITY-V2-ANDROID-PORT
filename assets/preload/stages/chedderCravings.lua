 function onCreate()
    makeLuaSprite('bgQue-So', 'backgrounds/BG_CHEDDER', -800,-300)
    addLuaSprite('bgQue-So', false)
    setCharacterX('boyfriend', 700);
    setCharacterY('boyfriend', 80);
	setProperty('gfGroup.visible', false);
end
function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep == 116 then
doTweenAlpha('adiosJuego', 'camGame',0, 4, 'linear');
doTweenAlpha('adiosHUD', 'camHUD',0, 4, 'linear');
end
if curStep == 162 then
makeLuaText('papa','Father...',1280,0,500)
        setTextFont('papa','MilkyNice.ttf')
        setTextSize('papa', 40);
        setTextAlignment('papa', 'center')
        setObjectCamera("papa", 'other');
        addLuaText('papa')
        end
if curStep == 171 then
makeLuaText('I','Father I...',1280,0,500)
        setTextFont('I','MilkyNice.ttf')
        setTextSize('I', 40);
        setTextAlignment('I', 'center')
        setObjectCamera("I", 'other');
        addLuaText('I')
        removeLuaText('papa')
        end
if curStep == 177 then
makeLuaText('crave1','Father I Cra-...',1280,0,500)
        setTextFont('crave1','MilkyNice.ttf')
        setTextSize('crave1', 40);
        setTextAlignment('crave1', 'center')
        setObjectCamera("crave1", 'other');
        addLuaText('crave1')
        removeLuaText('I')
        end
if curStep == 181 then
makeLuaText('crave2','Father I Crave...',1280,0,500)
        setTextFont('crave2','MilkyNice.ttf')
        setTextSize('crave2', 40);
        setTextAlignment('crave2', 'center')
        setObjectCamera("crave2", 'other');
        addLuaText('crave2')
        removeLuaText('crave1')
        end
if curStep == 185 then
makeLuaText('chedder','Father I Crave Chedder',1280,0,500)
        setTextFont('chedder','MilkyNice.ttf')
        setTextSize('chedder', 40);
        setTextAlignment('chedder', 'center')
        setObjectCamera("chedder", 'other');
        addLuaText('chedder')
        removeLuaText('crave2')
        end
if curStep == 192 then
doTweenAlpha('holaJuego', 'camGame',1, 0.2, 'linear');
doTweenAlpha('holaHUD', 'camHUD',1, 0.2, 'linear');
doTweenAlpha('adiosChedder', 'chedder',0, 0.2, 'linear');
end
end