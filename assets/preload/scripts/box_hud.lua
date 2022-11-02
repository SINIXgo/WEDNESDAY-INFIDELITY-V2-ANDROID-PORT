function onCreatePost()

    makeLuaText('Score','',0,13,565); 
    setTextSize('Score', 21);
    setTextBorder('Score', 3.5, '000000')
    setTextFont('Score', "wi.ttf") 
    setObjectCamera('Score', 'HUD')
    addLuaText('Score');

    makeLuaText('Misses','',0,13,595.5); 
    setTextSize('Misses', 21);
    setTextBorder('Misses', 3.5, '000000')
    setTextFont('Misses', "wi.ttf")
    setObjectCamera('Misses', 'HUD')
    addLuaText('Misses');
 
    makeLuaText('Accuracy', 'Accuracy', 0, 13,625) 
    setTextSize('Accuracy', 21);
    setTextBorder('Accuracy', 3.5, '000000')
    setTextFont('Accuracy', "wi.ttf")
    setObjectCamera('Accuracy', 'HUD')
    addLuaText('Accuracy')

    makeLuaText('Time','',0, 625, 666)
    setTextFont('Time','wi.ttf')
    setTextSize('Time', 19)
    setObjectCamera('Time', 'hud');
    setTextBorder('Time',3.5,'000000')
    setProperty('Time.alpha', 0);
    addLuaText('Time')

    makeLuaText('Sick','',0,1130,580); 
    setTextSize('Sick', 21);
    setTextBorder('Sick', 3.5, '000000')
    setTextFont('Sick', "wi.ttf")
    setObjectCamera('Sick', 'HUD')
    addLuaText('Sick');

    makeLuaText('Good','',0,1130,610); 
    setTextSize('Good', 21);
    setTextBorder('Good', 3.5, '000000')
    setTextFont('Good', "wi.ttf")
    setObjectCamera('Good', 'HUD')
    addLuaText('Good');

    makeLuaText('Bad','',0,1130,640); 
    setTextSize('Bad', 21);
    setTextBorder('Bad', 3.5, '000000')
    setTextFont('Bad', "wi.ttf")
    setObjectCamera('Bad', 'HUD')
    addLuaText('Bad');

    makeLuaText('Shit','',0,1130,670); 
    setTextSize('Shit', 21);
    setTextBorder('Shit', 3.5, '000000')
    setTextFont('Shit', "wi.ttf")
    setObjectCamera('Shit', 'HUD')
    addLuaText('Shit');

    makeLuaText('NameSong','',0,7,670)
    setTextSize('NameSong', 23)
    setTextBorder('NameSong', 3.5, '000000')
    setTextFont('NameSong', "wi.ttf")
    addLuaText('NameSong')
    setTextString('NameSong',songName..'')

end

function onUpdate()
  setProperty('timeBarBG.visible', true)
  setProperty('scoreTxt.visible', false)

  setProperty('timeBar.x', 445)
  setProperty('timeBar.scale.x', 3.225)
  setProperty('timeBarBG.scale.x', 3.375)
  setProperty('timeBar.scale.y', 1.035)
  setProperty('timeBarBG.scale.y', 1.195)
  setProperty('timeBar.y', 712)
  setProperty('timeBarBG.y', 708)
  setObjectCamera('timeBar', 'HUD')

  setTextSize('timeTxt', 20)
  setTextFont('timeTxt', "wi.ttf")
  setTextBorder('timeTxt', 3.5, '000000')
  setTextAlignment('timeTxt', 'right')
  setProperty('timeTxt.x', 228)
  setProperty('timeTxt.y', 665)
  setObjectCamera('timeTxt', 'HUD')

  setProperty('timeBar.color', getColorFromHex('ffffff'))

setObjectOrder('timeBar', true)
setObjectOrder('timeBarBG', false)
setObjectOrder('iconP2', false)
setObjectOrder('iconP1', false)
setObjectOrder('healthBar', false)
setObjectOrder('healthBarBG', false)
setObjectOrder('opponentNotes', false)
setObjectOrder('BarradeArriba', false)
setObjectOrder('BarradeAbajo', false)

if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
setProperty('Sick.y', 20)
setProperty('Good.y', 48)
setProperty('Bad.y', 76)
setProperty('Shit.y', 108)
setProperty('NameSong.y', 20)
setProperty('Score.y', 75)
setProperty('Misses.y', 105)
setProperty('Accuracy.y', 135)
setProperty('timeTxt.y', 20)
setProperty('Time.y', 20)
setProperty('timeBarBG.y', -4)
setProperty('timeBar.y', 0)

else if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
setProperty('Sick.y', 585)
setProperty('Good.y', 610.5)
setProperty('Bad.y', 636)
setProperty('Shit.y', 663)
setProperty('NameSong.y', 663)
setProperty('Score.y', 570)
setProperty('Misses.y', 595.5)
setProperty('Accuracy.y', 622)
setProperty('timeTxt.y', 663)
setProperty('Time.y', 663)
setProperty('timeBarBG.y', 705)
setProperty('timeBar.y', 700.5)
end
end

function onSongStart()
  doTweenAlpha('holaTIEMPO', 'Time', 1, 0.2)
  end
  
  function onEndSong()
  doTweenAlpha('adiosTIEMPO', 'Time', 0, 0.2)
  end

  function roundDecimal(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0);
    return math.floor(num * mult) / mult;
  end

function onUpdatePost()
    setTextString('Sick', 'Sick: '..getProperty('sicks'));
    setTextString('Good', 'Good: '..getProperty('goods'));
    setTextString('Bad', 'Bad: '..getProperty('bads'));
    setTextString('Shit', 'Shit: '..getProperty('shits'));
    setTextString('Score', 'Score: '..getProperty('songScore'));
    setTextString('Misses', 'Misses: '..getProperty('songMisses'));
    setTextString('Accuracy', 'Accuracy: '..math.floor(rating * 100)..'%')
    songSecs = tostring(roundDecimal(((songLength/1000)%60), 0))
    songMins = tostring(roundDecimal(((songLength/(1000*60))%60), 0))
    if #songSecs < 2 then
        songSecs = "0" .. songSecs
    end
    setTextString('Time',  ' - ' .. songMins .. ':' .. songSecs)
    math.randomseed(getPropertyFromClass('Conductor', 'songPosition') / curStep * math.random(4124,12312) * curBeat * 5843223)
end
end