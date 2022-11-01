function onCreate()
    makeLuaSprite('bg', 'Backgrounds/julian',-1500,-700)
    scaleObject('bg', 1.6,1.6);
    addLuaSprite('bg', false)
    
    makeLuaSprite('balla', 'Backgrounds/pipi',-1830,-730)
    scaleObject('balla', 1.8,1.8)
    setScrollFactor('balla',0.8,0.8);
    addLuaSprite('balla', true)
end