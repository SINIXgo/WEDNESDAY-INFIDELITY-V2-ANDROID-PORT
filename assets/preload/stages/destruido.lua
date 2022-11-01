function onCreate()
    makeLuaSprite('bg','DestruidoBG',-600)
    addLuaSprite('bg')

makeAnimatedLuaSprite('grain', 'grain', 0, 0);
addAnimationByPrefix('grain', 'grain', 'grain', 24, true);  
objectPlayAnimation('grain', 'grain', true)
scaleLuaSprite('grain', 2.75, 2.75);
addLuaSprite('grain', false);
setObjectCamera('grain', 'other');

	setProperty('defaultCamZoom', 0.8) 
end