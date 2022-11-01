function onCreate()
    makeAnimatedLuaSprite('grain', 'grain',0 ,0);
    addAnimationByPrefix('grain', 'staticbg', 'grain', 14, true)
    addLuaSprite('grain', false)
    objectPlayAnimation('grain', 'staticbg', true)
    setObjectCamera('grain', 'other')
    scaleObject('grain', 0.67, 0.67)
end