function onCreate() 
makeLuaSprite('simplememteunpilar', 'backgrounds/vesania/pillar bg',-600, -300);
addLuaSprite('simplememteunpilar', false);
scaleObject('simplememteunpilar', 1,1);

if not lowQuality then
  makeAnimatedLuaSprite('satanTrono', 'backgrounds/vesania/satan', 500, -300);
  addAnimationByPrefix('satanTrono', 'idle', 'CAGADA INFERNAL instance 1', 24, true);--40
  scaleObject('satanTrono', 1,1);
  addLuaSprite('satanTrono',false)
  end

  makeLuaSprite('bg', 'backgrounds/vesania/BG',-600, -300);
addLuaSprite('bg', false);
scaleObject('bg', 1,1);

if not lowQuality then
  makeAnimatedLuaSprite('demoniosChiquitos', 'backgrounds/vesania/demons', -165, -165);
  addAnimationByPrefix('demoniosChiquitos', 'idle', 'diablillos instance 1', 24, true);
  scaleObject('demoniosChiquitos', 1,1);
  addLuaSprite('demoniosChiquitos',false) 
  end 
 
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
end

function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep==64 then
doTweenAlpha('holaJuego', 'camGame', 1, 3)
end
if curStep==128 then
doTweenAlpha('holaHUD', 'camHUD', 1, 0.2)
end
if curStep == 528 then
doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
end
if curStep == 784 then
doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.2)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.2)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.2)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.2)
	doTweenAlpha('AlphaTween9', 'Sick', 0, 0.2)
	doTweenAlpha('AlphaTween10', 'Good', 0, 0.2)
	doTweenAlpha('AlphaTween11', 'Bad', 0, 0.2)
	doTweenAlpha('AlphaTween12', 'Shit', 0, 0.2)
	doTweenAlpha('AlphaTween13', 'Score', 0, 0.2)
	doTweenAlpha('AlphaTween14', 'Misses', 0, 0.2)
	doTweenAlpha('AlphaTween15', 'Accuracy', 0, 0.2)
	doTweenAlpha('AlphaTween16', 'NameSong', 0, 0.2)
	doTweenAlpha('AlphaTween17', 'Time', 0, 0.2)
	doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
end
if curStep == 1040 then
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
if curStep == 1295 then
doTweenAlpha('adiosJuego', 'camGame', 0, 1)
doTweenAlpha('adiosHUD', 'camHUD', 0, 1)
end
if curStep == 1400 then
doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
end
if curStep == 1410 then
doTweenAlpha('holaJuego', 'camGame', 1, 2)
doTweenAlpha('holaHUD', 'camHUD', 1, 2)
end
if curStep == 1810 then
doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
end
if curStep == 2064 then
doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.2)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.2)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.2)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.2)
	doTweenAlpha('AlphaTween9', 'Sick', 0, 0.2)
	doTweenAlpha('AlphaTween10', 'Good', 0, 0.2)
	doTweenAlpha('AlphaTween11', 'Bad', 0, 0.2)
	doTweenAlpha('AlphaTween12', 'Shit', 0, 0.2)
	doTweenAlpha('AlphaTween13', 'Score', 0, 0.2)
	doTweenAlpha('AlphaTween14', 'Misses', 0, 0.2)
	doTweenAlpha('AlphaTween15', 'Accuracy', 0, 0.2)
	doTweenAlpha('AlphaTween16', 'NameSong', 0, 0.2)
	doTweenAlpha('AlphaTween17', 'Time', 0, 0.2)
end
if curStep == 2320 then
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
end

function onBeatHit()
if curBeat % 2 == 0 then
objectPlayAnimation('satanTrono','idle', true)
end
objectPlayAnimation('demoniosChiquitos','idle',false)
end

function opponentNoteHit()
cameraShake('hud', 0.0075, 0.5)
cameraShake('game', 0.0075, 0.5)
    health = getProperty('health')
    if getProperty('health') > 0.3 then
        setProperty('health', health- 0.015);
    end
end