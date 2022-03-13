

local allowCountdown = false
function onCreatePost()
	caolwer = {'de5f5f','7878E8','ffd359','505099','fc9c5b','7878E8'}
		doTweenColor('w','boyfriend', '505099', 2, "linear")
		doTweenColor('w4','backyard', '505099', 2, "linear")
		doTweenColor('1234567','gf', '505099', 2, "linear")

		turnvalue = 360;
	    um = caolwer[getRandomInt(1, #caolwer)]
	--	setProperty('boyfriend.color', getColorFromHex('505099'));
	
	
	
	end
	function onUpdatePost(elapsed)

	end
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end
function onUpdate(elapsed)
	if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/60)
	  doTweenY(dadTweenY, 'dad', 0-50*math.sin((currentBeat*0.25)*math.pi),0.1)
	  
	end

	if curBeat % 4 == 0 and curStep  >= 52  then
		um = caolwer[getRandomInt(1, #caolwer)]
		doTweenColor('a2','boyfriend',um , 0.5, "linear")
		doTweenColor('ass3','dad', um, .5, "linear")
		doTweenColor('ass33','gf', um, .5, "linear")

		doTweenColor('e4','backyard', '662746', 2, "linear")
	end

  end
function onTweenCompleted(D1)
	for i = 0,19 do
		setPropertyFromGroup('strumLineNotes',i,'angle',-360)
	end
end
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.3 then
        setProperty('health', health- 0.017);
    end
end
function onBeatHit()
if curBeat % 4 == 0 then
	for i = 0,19 do 
		noteTweenAngle('D'..i,i , 360 , .6, linear);


	end
end
end

