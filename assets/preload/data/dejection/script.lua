function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'notfuckedanymore' then
        setProperty('SCREAMER.alpha', 0);
    end
end

function onEvent(name, value1, value2)
    if name == 'Hello My Name is Markiplier' then
        
        setProperty('SCREAMER.alpha', 1);

        runTimer('notfuckedanymore', 1, 1);
    end
	if name == 'CamFade' then
			doTweenAlpha('blackBGFadeEventTween', 'black', 1, 4, 'linear');
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
    if name == 'HUD Fadeout' then
			doTweenAlpha('hudAlpha', 'camHUD', 0, 0.3, 'linear');
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
    if name == 'HUD Fadein' then
			doTweenAlpha('hudAlpha', 'camHUD', 1, 0.3, 'linear');
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.0175);
    end
end

function onCreate()
	makeLuaSprite('black', 'black', 0, 0);
	setProperty('black.alpha', 0);
	setObjectCamera('black', 'hud');

        addLuaSprite('black', true);
end
