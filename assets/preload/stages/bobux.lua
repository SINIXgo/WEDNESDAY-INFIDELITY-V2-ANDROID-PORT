function onCreate()   
precacheImage('mechanics/warning')
makeLuaSprite('fondoDestruido', 'backgrounds/Destruido', -500, -300);
addLuaSprite('fondoDestruido', false);

makeLuaSprite('BarradeArriba', '', 0, -120)
	makeGraphic('BarradeArriba', 1280, 120, '000000')
	setObjectCamera('BarradeArriba', 'camHUD')
	addLuaSprite('BarradeArriba', false)

	makeLuaSprite('BarradeAbajo', '', 0, 720)
	makeGraphic('BarradeAbajo', 1280, 120, '000000')
	setObjectCamera('BarradeAbajo', 'camHUD')
	addLuaSprite('BarradeAbajo', false)
	setProperty('gfGroup.visible', false);
	setProperty('camGame.alpha',0);
	setProperty('camHUD.alpha',0);
	
	makeLuaSprite('Advertencia','mechanics/Advertencia p', 300,400)
	setObjectCamera('Advertencia', 'other')
	addLuaSprite('Advertencia', true)
	setProperty('Advertencia.alpha',0);
	
	setObjectOrder('dadGroup', true)
setObjectOrder('boyfriendGroup', false)
setObjectOrder('fondoDestruido', false)
end

function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep == 1 then
setProperty('camGame.alpha',1);
setProperty('camHUD.alpha',1);
doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
doTweenAlpha('AdvertenciaAlpha', 'Advertencia', 1, 1.5)
end
if curStep == 64 then
doTweenAlpha('AdiosAdvertencia', 'Advertencia', 0, 1.5)
end
if curStep==256 then
addLuaScript('custom_events/MickeyTiemblaPantalla')
doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
  end
if curStep==1606 then
setProperty('camGame.alpha',0);
end

if curStep==1616 then
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
	doTweenAlpha('AlphaTween9', 'Sick', 0, 1)
	doTweenAlpha('AlphaTween10', 'Good', 0, 1)
	doTweenAlpha('AlphaTween11', 'Bad', 0, 1)
	doTweenAlpha('AlphaTween12', 'Shit', 0, 1)
	doTweenAlpha('AlphaTween13', 'Score', 0, 1)
	doTweenAlpha('AlphaTween14', 'Misses', 0, 1)
	doTweenAlpha('AlphaTween15', 'Accuracy', 0, 1)
	doTweenAlpha('AlphaTween16', 'NameSong', 0, 1)
	doTweenAlpha('AlphaTween17', 'WeekMissesTxt', 0, 1)
	doTweenAlpha('AlphaTween18', 'weekMissesBar', 0, 1)
end
if curStep==1744 then
setProperty('camGame.alpha',1);
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
	doTweenAlpha('AlphaTween18', 'WeekMissesTxt', 1, 0.2)
	doTweenAlpha('AlphaTween19', 'weekMissesBar', 1, 0.2)
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then--Detalles pa ,Detalles
noteTweenAlpha("notaop1", 0, 0.5, 0.2, "linear")
	noteTweenAlpha("notaop2", 1, 0.5, 0.2, "linear")
	noteTweenAlpha("notaop3", 2, 0.5, 0.2, "linear")
	noteTweenAlpha("notaop4", 3, 0.5, 0.2, "linear")
	end
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenAlpha("notaop1", 0, 1, 0.2, "linear")
	noteTweenAlpha("notaop2", 1, 1, 0.2, "linear")
	noteTweenAlpha("notaop3", 2, 1, 0.2, "linear")
	noteTweenAlpha("notaop4", 3, 1, 0.2, "linear")
end
end
if curStep==1860 then
noteTweenAlpha("notapl1", 4, 1, 1, "linear")
	noteTweenAlpha("notapl2", 5, 1, 1, "linear")
	noteTweenAlpha("notapl3", 6, 1, 1, "linear")
	noteTweenAlpha("notapl4", 7, 1, 1, "linear")
end
if curStep==1880 then
noteTweenAlpha("notapl1", 0, 0, 1, "linear")
	noteTweenAlpha("notapl2", 1, 0, 1, "linear")
	noteTweenAlpha("notapl3", 2, 0, 1, "linear")
	noteTweenAlpha("notapl4", 3, 0, 1, "linear")
end
if curStep==1928 then
if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then--Detalles pa ,Detalles
noteTweenAlpha("notaop1", 0, 0.5, 1, "linear")
	noteTweenAlpha("notaop2", 1, 0.5, 1, "linear")
	noteTweenAlpha("notaop3", 2, 0.5, 1, "linear")
	noteTweenAlpha("notaop4", 3, 0.5, 1, "linear")
	end
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenAlpha("notaop1", 0, 1, 1, "linear")
	noteTweenAlpha("notaop2", 1, 1, 1, "linear")
	noteTweenAlpha("notaop3", 2, 1, 1, "linear")
	noteTweenAlpha("notaop4", 3, 1, 1, "linear")
end
end
if curStep==2256 then
setProperty('camGame.alpha',0);
doTweenAlpha('adiosHUD', 'camHUD', 0, 1.5, 'linear');
end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.3 then
        setProperty('health', health- 0.015);
    end
end