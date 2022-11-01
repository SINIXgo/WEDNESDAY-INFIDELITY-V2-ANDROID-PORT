function onCreate()
	-- backrooms😱😱😱😱😱
	makeLuaSprite('white', '', -500, -100);
   makeGraphic('white',1280,720,'ffffff')
	setLuaSpriteScrollFactor('white',1,1)
   scaleObject('white', 5.5, 5.5)
   
	addLuaSprite('white', false);
	makeLuaSprite('black1','',0,0)
   makeGraphic('black1',1280,720,'000000')
	setLuaSpriteScrollFactor('black1',1,1)
   setProperty('black1.alpha',0)
	setObjectCamera("black1", 'other')
	
   addLuaSprite('black1', true);
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

function onStepHit()
if curStep==960 then
doTweenZoom('Change Camera Zoom', 'camGame',1.7, 19, 'linear')
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
  if curStep==992 then
    doTweenAlpha('black1','black1',1.5,0.1)
  end
if curStep==1054 then
    doTweenAlpha('black1','black1',0,1.5)
  end
if curStep==1117 then
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
if curStep==1120 then
addLuaScript('custom_events/MokeyTiemblaPantalla')
  end
if curStep == 2400 then
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
end