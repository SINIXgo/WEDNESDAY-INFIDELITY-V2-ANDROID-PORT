function onCreate()
    makeLuaSprite('bg', 'Backgrounds/Snoop-Dog-Approved-BG',-540,-200)
    scaleObject('bg', 1,1);
    addLuaSprite('bg', false)
    
    makeLuaSprite('queso', 'Backgrounds/reefer/Simplemente Queso',0,0)
    scaleObject('queso', 0.5,0.5);
    setProperty('queso.alpha',0);
    addLuaSprite('queso', false)
    setObjectCamera('queso', 'other')
    
    makeLuaSprite('bocina', 'Backgrounds/reefer/TuripIpIp',0,0)
    scaleObject('bocina', 0.5,0.5);
    setProperty('bocina.alpha',0);
    addLuaSprite('bocina', false)
    setObjectCamera('bocina', 'other')
    
    makeLuaSprite('ruido', 'Backgrounds/reefer/Ruido P',0,0)
    scaleObject('ruido', 0.5,0.5);
    setProperty('ruido.alpha',0);
    addLuaSprite('ruido', false)
    setObjectCamera('ruido', 'other')
    
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

function onCreatePost()
    if getProperty('boyfriend.curCharacter') == 'Gf-retro' then
setCharacterX('boyfriend', 800);
end
if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
makeAnimatedLuaSprite('dogg','Backgrounds/reefer/smook',-400,0)
	addAnimationByPrefix('dogg','dance','idle',24,true)
	scaleObject('dogg',2,2)
	addLuaSprite('dogg',true)
	setObjectCamera('dogg', 'other')
	setProperty('dogg.alpha',0);
	
	makeAnimatedLuaSprite('dogg2','Backgrounds/reefer/smook',400,0)
	addAnimationByPrefix('dogg2','dance','idle',24,true)
	objectPlayAnimation('dogg2','dance',false)
	scaleObject('dogg2',2,2)
	addLuaSprite('dogg2',true)
	setObjectCamera('dogg2', 'other')
	setProperty('dogg2.alpha',0);
	else
makeAnimatedLuaSprite('dogg','Backgrounds/reefer/smook',0,0)
	addAnimationByPrefix('dogg','dance','idle',24,true)
	scaleObject('dogg',2,2)
	addLuaSprite('dogg',true)
	setObjectCamera('dogg', 'other')
	setProperty('dogg.alpha',0);
	end
makeAnimatedLuaSprite('boom','Backgrounds/reefer/Explosion',0,0)
	addAnimationByPrefix('boom','dance','Explosion_',60,false)
	scaleObject('boom',4,4)
	addLuaSprite('boom',true)
	setProperty('boom.alpha',0);
	setObjectCamera('boom', 'other')
end

function onStepHit()--Hecho Por Nickobelit (Encerio esta canción tenía potencial para eventos así....)
if curStep == 32 then
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
if curStep == 128 then
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
if curStep == 768 then
setProperty('camGame.alpha',0);
doTweenAlpha('adiosHUD', 'camHUD', 0, 1, 'linear');
end
if curStep == 806 then
objectPlayAnimation('dogg','dance',false)
objectPlayAnimation('dogg2','dance',false)
doTweenAlpha('olap', 'dogg', 1,1, 'linear');
doTweenAlpha('ola2p', 'dogg2',1,1, 'linear');
end
if curStep == 832 then
doTweenAlpha('holaHUD', 'camHUD', 1, 1, 'linear');
doTweenAlpha('holaJuego', 'camGame', 1, 1, 'linear');
end
if curStep == 1084 then
objectPlayAnimation('boom','dance',true)
end
if curStep == 1088 then
setProperty('boom.alpha',1);
removeLuaSprite('dogg',true);
removeLuaSprite('dogg2',true);
end
if curStep == 1104 then
setProperty('camGame.alpha',0);
doTweenAlpha('adiosHUD', 'camHUD', 0, 1, 'linear');
doTweenAlpha('adiosBOOM', 'boom',0,1, 'linear');
end
if curStep == 1152 then
doTweenAlpha('holaHUD', 'camHUD', 1, 1, 'linear');
doTweenAlpha('holaJuego', 'camGame', 1, 1, 'linear');
end
if curStep == 2048 then
doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
end
if curStep == 2208 then
setProperty('camGame.alpha',0);
setProperty('camHUD.alpha',0);
end
if curStep == 2224 then
setProperty('queso.alpha',1);
end
if curStep == 2230 then
setProperty('bocina.alpha',1);
setProperty('ruido.alpha',1);
end
if curStep == 2232 then
setProperty('ruido.alpha',0);
end
if curStep == 2234 then
setProperty('ruido.alpha',1);
end
if curStep == 2235 then
setProperty('ruido.alpha',0);
end
if curStep == 2236 then
setProperty('ruido.alpha',1);
end
if curStep == 2237 then
setProperty('ruido.alpha',0);
end
if curStep == 2238 then
setProperty('ruido.alpha',1);
end
if curStep == 2239 then
setProperty('ruido.alpha',0);
end
if curStep == 2240 then
setProperty('ruido.alpha',1);
end
if curStep == 2241 then
setProperty('ruido.alpha',0);
end
if curStep == 2242 then
setProperty('ruido.alpha',1);
end
if curStep == 2243 then
setProperty('ruido.alpha',0);
end
if curStep == 2245 then
setProperty('ruido.alpha',1);
end
end