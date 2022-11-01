local allowCountdown = false;
local allowEndSong = false
local seenEndCutscene = false

function onStartCountdown()
    if not allowCountdown and isStoryMode and not seenCutscene then
        startVideo("Portal");
        allowCountdown = true;
        return Function_Stop;
    end
    return Function_Continue;
end

function onEndSong()
	if not allowEndSong and isStoryMode and not seenEndCutscene then 
		startVideo('BadEnding');
		allowEndSong = true;
		return Function_Stop;
	end
	return Function_Continue;
end