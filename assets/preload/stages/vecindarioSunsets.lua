function onCreate()   
   makeLuaSprite('fondoVecindario', 'backgrounds/VecindarioBG', -500, -300);
   addLuaSprite('fondoVecindario', false);
   setCharacterX('boyfriend', 750);
   setCharacterY('boyfriend', 0);
end

function onEndSong()
if isStoryMode then
loadSong('versiculus-iratus', hard);
return Function_Stop;
end
end
