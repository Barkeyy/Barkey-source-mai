shame = 0;
some_array = {"Cheater", "Skill issue", "Imagine using Botplay", "Pussy","Learn Rhythm","Dont only watch charts","You smeel like you farded","Learn to play"}

function onCreate()
    um = some_array[getRandomInt(1, #some_array)]
    if not botPlay and getPropertyFromClass('ClientPrefs','JudgeCount') == true then
        makeLuaText('ratings', 'Sicks: ' .. getProperty('sicks') .. '\nGoods: ' .. getProperty('goods') .. '\nBads: ' .. getProperty('bads') .. '\nShits: ' .. getProperty('shits'), 200, 30, 355);
        setTextSize('ratings', 50)
        setTextAlignment('ratings', 'left')
        addLuaText('ratings');
        setTextFont('ratings', 'funkin.otf')
        setTextBorder('ratings', '3', '000000')


    end
    
    if botPlay then
        makeLuaText('shame', 'shame: ' .. shame, 200, 50, 430);
        setTextSize('shame', 50)
        setTextAlignment('shame', 'left')
        addLuaText('shame');
        setProperty('health', 0.001)

    end
    
end
function onCreatePost()
    if botPlay then
        setRatingName(um)
    end
end
    
function onRecalculateRating()
    setTextString('ratings', 'Sicks: ' .. getProperty('sicks') .. '\nGoods: ' .. getProperty('goods') .. '\nBads: ' .. getProperty('bads') .. '\nShits: ' .. getProperty('shits'));
end
function goodNoteHit(id, direction, noteType, isSustainNote)
    if botPlay  and  not isSustainNote then
        shame = shame + 1;
        setTextString('shame','shame: ' .. shame);
        setProperty('songMisses',(getProperty('songMisses')+math.random(1,10)))
        setProperty('score',(getProperty('score')+math.random(1,10)))

        setProperty('health', 0.001)

    end
end