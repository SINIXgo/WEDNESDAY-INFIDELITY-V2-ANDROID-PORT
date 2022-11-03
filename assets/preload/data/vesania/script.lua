function onCreate()
addCharacterToList('smileeeeerposes', 'dad');
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if curStep >= 271 then
triggerEvent('Change Character', 1, 'smileeeeerposes');
runTimer('Idle', 0.25, 1);
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Idle' then
triggerEvent('Change Character', 1, 'smileeeeer');
end
end