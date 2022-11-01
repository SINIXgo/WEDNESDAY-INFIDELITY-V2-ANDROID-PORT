function onCreate()
    makeLuaSprite('cantina', 'backgrounds/leakers/bg',-1680,-330)
	scaleObject('cantina', 2,2);
    addLuaSprite('cantina', false)
    
  if not lowQuality then
    makeLuaSprite('mesa2', 'backgrounds/leakers/mesa4',1380,480)
    addLuaSprite('mesa2', true)
    setScrollFactor('mesa2',0.9,0.9);
    
    makeAnimatedLuaSprite('LaGenteKpa', 'backgrounds/leakers/DEVS', -65, 10);
  addAnimationByPrefix('LaGenteKpa', 'idle', 'DEVS', 24, false);
  scaleObject('LaGenteKpa', 1.2,1.2);
  addLuaSprite('LaGenteKpa',false)
  end

  makeAnimatedLuaSprite('OswaldoElPistolas', 'characters/leakers/OSWALD', 1250, 80);
  addAnimationByPrefix('OswaldoElPistolas', 'idle', 'mesa OSWALD', 24, false);
  addAnimationByPrefix('OswaldoElPistolas', 'nopusopared', 'OSWALD MANCO', 24, false);
  scaleObject('OswaldoElPistolas', 1,1);
  addLuaSprite('OswaldoElPistolas',false)
  
  makeLuaSprite('BarradeArriba', '', 0, -120)
	makeGraphic('BarradeArriba', 1280, 120, '000000')
	setObjectCamera('BarradeArriba', 'camHUD')
	addLuaSprite('BarradeArriba', false)

	makeLuaSprite('BarradeAbajo', '', 0, 720)
	makeGraphic('BarradeAbajo', 1280, 120, '000000')
	setObjectCamera('BarradeAbajo', 'camHUD')
	addLuaSprite('BarradeAbajo', false)
end

function onBeatHit()
objectPlayAnimation('LaGenteKpa','idle',false)
if curBeat < 500 then
    objectPlayAnimation('OswaldoElPistolas','idle',false)
end
end

function onStepHit()
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
if curStep == 320 then
doTweenY('BarraNegra1', 'BarradeArriba', -120, 0.2, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 0.2, 'quartOut')
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
if curStep == 960 then
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
if curStep == 1088 then
doTweenY('BarraNegra1', 'BarradeArriba', -120, 0.2, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 0.2, 'quartOut')
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
if curStep == 1408 then
doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
noteTweenAlpha("notaop1", 0, 0, 1, "linear")
	noteTweenAlpha("notaop2", 1, 0, 1, "linear")
	noteTweenAlpha("notaop3", 2, 0, 1, "linear")
	noteTweenAlpha("notaop4", 3, 0, 1, "linear")
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
if curStep == 1472 then
doTweenY('BarraNegra1', 'BarradeArriba', -120, 0.2, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 0.2, 'quartOut')
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
if curStep == 2006 then
    objectPlayAnimation('OswaldoElPistolas','nopusopared',false)
    setProperty('OswaldoElPistolas.offset.x',5)--Pinches Offsets aaaa
    setProperty('OswaldoElPistolas.offset.y',48)
    end
if curStep == 2021 then
setProperty('gfGroup.visible', false);
end
end