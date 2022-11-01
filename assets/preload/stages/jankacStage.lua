function onCreate()
    makeLuaSprite('bg', 'backgrounds/jank/honk',-900,-500)
	scaleObject('bg', 1.3, 1.3);
    addLuaSprite('bg', false)
    setCharacterX('boyfriend', 1000);
    setCharacterY('boyfriend', 100);
    
    setObjectOrder('dadGroup', true)
setObjectOrder('boyfriendGroup', false)
setObjectOrder('gfGroup', false)
setObjectOrder('bg', false)
end

function opponentNoteHit()
cameraShake('game', 0.0075, 0.5)
cameraShake('hud', 0.0075, 0.5)
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.0175);
    end
end