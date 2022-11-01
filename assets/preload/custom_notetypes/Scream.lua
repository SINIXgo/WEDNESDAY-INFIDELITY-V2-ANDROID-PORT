function onCreate()
    makeAnimatedLuaSprite('SCREAMER', 'SCREAMER',0,0);
    addAnimationByPrefix('SCREAMER', 'staticbg', 'hitStatic1',24,true)
    addLuaSprite('SCREAMER',false)
    objectPlayAnimation('SCREAMER', 'staticbg',true)
    setObjectCamera('SCREAMER', 'other')
    scaleObject('SCREAMER',0.67,0.67)
    setProperty('SCREAMER.alpha',0)

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Scream' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SCREAMERNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Scream' then
        playSound('static');
        triggerEvent('Hello My Name is Markiplier');
	end
end