function onCreate()
if isStoryMode then
makeLuaSprite('NoPauseSatan', 'SATAN/satanNoPausar',35,0)
    addLuaSprite('NoPauseSatan', true)
    setObjectCamera('NoPauseSatan', 'other')    
    setProperty('NoPauseSatan.visible', false);
    
    makeAnimatedLuaSprite('NoPuedesDetenerte', 'SATAN/noPuedesDetenerte', 220, 535);
  addAnimationByPrefix('NoPuedesDetenerte', 'idle', 'No', 24, true);
  addLuaSprite('NoPuedesDetenerte',true)
  setObjectCamera('NoPuedesDetenerte', 'other')    
    setProperty('NoPuedesDetenerte.visible', false);
    
    setObjectOrder('NoPuedesDetenerte', true)
    setObjectOrder('NoPauseSatan', false)
end
end

function onPause()
if isStoryMode then
    playSound('devil_laugh', 0.8)
   setProperty('NoPauseSatan.visible', true);
   setProperty('NoPuedesDetenerte.visible', true);
   setProperty('NoPauseSatan.alpha', 1);
   setProperty('NoPuedesDetenerte.alpha', 1);
   objectPlayAnimation('NoPuedesDetenerte','idle',false)
	runTimer('chauSatan',1)
	return Function_Stop;
end
end

function onTimerCompleted(tag)
   if tag == 'chauSatan' then
    doTweenAlpha('adiosSatan', 'NoPauseSatan', 0, 0.3, 'linear');
    doTweenAlpha('adiosTxt', 'NoPuedesDetenerte', 0, 0.3, 'linear');
    end
end