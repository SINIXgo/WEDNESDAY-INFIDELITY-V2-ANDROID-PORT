 function onCreate()
    makeLuaSprite('bgQue-So', 'backgrounds/BG_CHEDDER', -800,-300)
    addLuaSprite('bgQue-So', false)
    setCharacterX('boyfriend', 700);
    setCharacterY('boyfriend', 80);
	makeLuaSprite('BarradeArriba', '', 0, -120)
	makeGraphic('BarradeArriba', 1280, 120, '000000')
	setObjectCamera('BarradeArriba', 'camHUD')
	addLuaSprite('BarradeArriba', false)

	makeLuaSprite('BarradeAbajo', '', 0, 720)
	makeGraphic('BarradeAbajo', 1280, 120, '000000')
	setObjectCamera('BarradeAbajo', 'camHUD')
	addLuaSprite('BarradeAbajo', false)
	setProperty('gfGroup.visible', false);
end
function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep == 1 then
doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
noteTweenAlpha("notapl1", 0, 0, 1, "linear")
	noteTweenAlpha("notapl2", 1, 0, 1, "linear")
	noteTweenAlpha("notapl3", 2, 0, 1, "linear")
	noteTweenAlpha("notapl4", 3, 0, 1, "linear")
noteTweenAlpha("notaop1", 4, 0, 1, "linear")
	noteTweenAlpha("notaop2", 5, 0, 1, "linear")
	noteTweenAlpha("notaop3", 6, 0, 1, "linear")
	noteTweenAlpha("notaop4", 7, 0, 1, "linear")
	doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 1)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 1)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 1)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 1)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 1)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 1)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 1)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 1)
	doTweenAlpha('AlphaTween9', 'Sick', 0, 1)
	doTweenAlpha('AlphaTween10', 'Good', 0, 1)
	doTweenAlpha('AlphaTween11', 'Bad', 0, 1)
	doTweenAlpha('AlphaTween12', 'Shit', 0, 1)
	doTweenAlpha('AlphaTween13', 'Score', 0, 1)
	doTweenAlpha('AlphaTween14', 'Misses', 0, 1)
	doTweenAlpha('AlphaTween15', 'Accuracy', 0, 1)
	doTweenAlpha('AlphaTween16', 'NameSong', 0, 1)
	doTweenAlpha('AlphaTween17', 'Time', 0, 1)
end
if curStep == 240 then
doTweenAlpha('adiosJuego', 'camGame',0, 2, 'linear');
end
if curStep == 272 then
makeLuaText('more','More...',1280,0,500)
        setTextFont('more','MilkyNice.ttf')
        setTextSize('more', 40);
        setTextAlignment('more', 'center')
        setObjectCamera("more", 'other');
        addLuaText('more')
        end
if curStep == 286 then
makeLuaText('padre','More Father...',1280,0,500)
        setTextFont('padre','MilkyNice.ttf')
        setTextSize('padre', 40);
        setTextAlignment('padre', 'center')
        setObjectCamera("padre", 'other');
        addLuaText('padre')
        removeLuaText('more')
        end
if curStep == 298 then
makeLuaText('I','I...',1280,0,500)
        setTextFont('I','MilkyNice.ttf')
        setTextSize('I', 40);
        setTextAlignment('I', 'center')
        setObjectCamera("I", 'other');
        addLuaText('I')
        removeLuaText('padre')
        end
if curStep == 302 then
makeLuaText('crave1','I Cra-...',1280,0,500)
        setTextFont('crave1','MilkyNice.ttf')
        setTextSize('crave1', 40);
        setTextAlignment('crave1', 'center')
        setObjectCamera("crave1", 'other');
        addLuaText('crave1')
        removeLuaText('I')
        end
if curStep == 304 then
makeLuaText('crave2','I Crave...',1280,0,500)
        setTextFont('crave2','MilkyNice.ttf')
        setTextSize('crave2', 40);
        setTextAlignment('crave2', 'center')
        setObjectCamera("crave2", 'other');
        addLuaText('crave2')
        removeLuaText('crave1')
        end
if curStep == 308 then
makeLuaText('more','I Crave MORE',1280,0,500)
        setTextFont('more','MilkyNice.ttf')
        setTextSize('more', 40);
        setTextAlignment('more', 'center')
        setObjectCamera("more", 'other');
        addLuaText('more')
        removeLuaText('crave2')
        end
if curStep == 320 then
doTweenAlpha('adiosMore', 'more',0, 0.2, 'linear');
doTweenAlpha('holaJuego', 'camGame',1, 0.2, 'linear');
doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.2)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.2)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.2)
	doTweenAlpha('AlphaTween9', 'Sick', 1, 0.2)
	doTweenAlpha('AlphaTween10', 'Good', 1, 0.2)
	doTweenAlpha('AlphaTween11', 'Bad', 1, 0.2)
	doTweenAlpha('AlphaTween12', 'Shit', 1, 0.2)
	doTweenAlpha('AlphaTween13', 'Score', 1, 0.2)
	doTweenAlpha('AlphaTween14', 'Misses', 1, 0.2)
	doTweenAlpha('AlphaTween15', 'Accuracy', 1, 0.2)
	doTweenAlpha('AlphaTween16', 'NameSong', 1, 0.2)
	doTweenAlpha('AlphaTween17', 'Time', 1, 0.2)
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then--Detalles pa ,Detalles
noteTweenAlpha("notaop1", 0, 0.5, 0.2, "linear")
	noteTweenAlpha("notaop2", 1, 0.5, 0.2, "linear")
	noteTweenAlpha("notaop3", 2, 0.5, 0.2, "linear")
	noteTweenAlpha("notaop4", 3, 0.5, 0.2, "linear")
noteTweenAlpha("notapl1", 4, 1, 0.2, "linear")
	noteTweenAlpha("notapl2", 5, 1, 0.2, "linear")
	noteTweenAlpha("notapl3", 6, 1, 0.2, "linear")
	noteTweenAlpha("notapl4", 7, 1, 0.2, "linear")
	end
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenAlpha("notaop1", 0, 1, 0.2, "linear")
	noteTweenAlpha("notaop2", 1, 1, 0.2, "linear")
	noteTweenAlpha("notaop3", 2, 1, 0.2, "linear")
	noteTweenAlpha("notaop4", 3, 1, 0.2, "linear")
noteTweenAlpha("notapl1", 4, 1, 0.2, "linear")
	noteTweenAlpha("notapl2", 5, 1, 0.2, "linear")
	noteTweenAlpha("notapl3", 6, 1, 0.2, "linear")
	noteTweenAlpha("notapl4", 7, 1, 0.2, "linear")
end
end
if curStep == 340 then
doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
end
if curStep == 460 then
doTweenAlpha('adiosJuego', 'camGame',0,0.4, 'linear');
doTweenAlpha('adiosHud', 'camHUD',0,0.4, 'linear');
end
if curStep == 464 then
doTweenAlpha('holaJuego', 'camGame',1,0.1, 'linear');
doTweenAlpha('holaHud', 'camHUD',1,0.1, 'linear');
end
if curStep == 476 then
doTweenAlpha('adiosJuego', 'camGame',0,0.4, 'linear');
doTweenAlpha('adiosHud', 'camHUD',0,0.4, 'linear');
end
if curStep == 480 then
doTweenAlpha('holaJuego', 'camGame',1,0.1, 'linear');
doTweenAlpha('holaHud', 'camHUD',1,0.1, 'linear');
end
if curStep == 524 then
doTweenAlpha('adiosJuego', 'camGame',0,0.4, 'linear');
doTweenAlpha('adiosHud', 'camHUD',0, 0.4, 'linear');
end
if curStep == 528 then
doTweenAlpha('holaJuego', 'camGame',1,0.1, 'linear');
doTweenAlpha('holaHud', 'camHUD',1,0.1, 'linear');
end
if curStep == 540 then
doTweenAlpha('adiosJuego', 'camGame',0,0.4, 'linear');
doTweenAlpha('adiosHud', 'camHUD',0, 0.4, 'linear');
end
if curStep == 544 then
doTweenAlpha('holaJuego', 'camGame',1,0.1, 'linear');
doTweenAlpha('holaHud', 'camHUD',1,0.1, 'linear');
end
if curStep == 830 then
doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 1)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 1)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 1)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 1)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 1)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 1)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 1)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 1)
	doTweenAlpha('AlphaTween9', 'Sick', 0, 1)
	doTweenAlpha('AlphaTween10', 'Good', 0, 1)
	doTweenAlpha('AlphaTween11', 'Bad', 0, 1)
	doTweenAlpha('AlphaTween12', 'Shit', 0, 1)
	doTweenAlpha('AlphaTween13', 'Score', 0, 1)
	doTweenAlpha('AlphaTween14', 'Misses', 0, 1)
	doTweenAlpha('AlphaTween15', 'Accuracy', 0, 1)
	doTweenAlpha('AlphaTween16', 'NameSong', 0, 1)
	doTweenAlpha('AlphaTween17', 'Time', 0, 1)
doTweenAlpha('adiosBGomasomenosxd', 'bgQue-So',0.1,0.5, 'linear');
end
if curStep == 1080 then
doTweenAlpha('holaBG', 'bgQue-So',1,0.5, 'linear');
doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.2)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.2)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.2)
	doTweenAlpha('AlphaTween9', 'Sick', 1, 0.2)
	doTweenAlpha('AlphaTween10', 'Good', 1, 0.2)
	doTweenAlpha('AlphaTween11', 'Bad', 1, 0.2)
	doTweenAlpha('AlphaTween12', 'Shit', 1, 0.2)
	doTweenAlpha('AlphaTween13', 'Score', 1, 0.2)
	doTweenAlpha('AlphaTween14', 'Misses', 1, 0.2)
	doTweenAlpha('AlphaTween15', 'Accuracy', 1, 0.2)
	doTweenAlpha('AlphaTween16', 'NameSong', 1, 0.2)
	doTweenAlpha('AlphaTween17', 'Time', 1, 0.2)
end
if curStep == 1668 then
setProperty('camGame.alpha', 0);
setProperty('camHUD.alpha', 0);
end
end