function onCreate()
    makeLuaSprite('blackfade','black',0,0)
    setObjectCamera('blackfade','other')
    addLuaSprite('blackfade',false)
    setProperty('blackfade.alpha',0)

    if songName == 'Carefree' or songName == 'Cessation' then
        makeLuaSprite('CFEffect','effects/careFreeEffect',0,0)
        setObjectCamera('CFEffect','other')
        addLuaSprite('CFEffect',false)
    end
    if songName == 'Careless' then
        makeLuaSprite('CLEffect','effects/careLessEffect',0,0)
        setObjectCamera('CLEffect','other')
        addLuaSprite('CLEffect',false)
    end
    if songName == 'Censory-Overload' then
        makeLuaSprite('COEffect','effects/censory-overloadEffect',0,0)
        setObjectCamera('COEffect','other')
        addLuaSprite('COEffect',false)
    end
end

function onUpdate()
    if songName == 'Careless' then
        if curStep == 280 or curStep == 312 or curStep == 344 or curStep == 376 then
            noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
			noteTweenX('bfTween2', 5, 205, 0.01, 'linear');
			noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
			noteTweenX('bfTween4', 7, 425, 0.01, 'linear');
			noteTweenX('dadTween1', 0, 730, 0.01, 'linear');
			noteTweenX('dadTween2', 1, 845, 0.01, 'linear');
			noteTweenX('dadTween3', 2, 955, 0.01, 'linear');
			noteTweenX('dadTween4', 3, 1065, 0.01, 'linear');
        end
        if curStep == 284 or curStep == 316 or curStep == 348 or curStep == 380 then
            noteTweenX('dadTween1', 0, 90, 0.01, 'linear');
			noteTweenX('dadTween2', 1, 205, 0.01, 'linear');
			noteTweenX('dadTween3', 2, 315, 0.01, 'linear');
			noteTweenX('dadTween4', 3, 425, 0.01, 'linear');
			noteTweenX('bfTween1', 4, 730, 0.01, 'linear');
			noteTweenX('bfTween2', 5, 845, 0.01, 'linear');
			noteTweenX('bfTween3', 6, 955, 0.01, 'linear');
			noteTweenX('bfTween4', 7, 1065, 0.01, 'linear');
        end
    end
    if songName == 'Censory-Overload' then
        if curStep == 3904 or curStep == 3072 then
            doTweenAlpha('blackSussyBakaFAde','blackfade',1,1,'linear')
            doTweenAlpha('fadeeffect','COEffect',0,1,'linear')
        end
        if curStep == 3104 then
            doTweenAlpha('blackSussyBakaFAde','blackfade',0,1,'linear')
            doTweenAlpha('fadeeffect','COEffect',1,1,'linear')
        end
    end
end

function onCreatePost()
    setProperty('timeBar.visible',false)
    setProperty('timeBarBG.visible',false)

    setProperty('timeTxt.y',500)
end

function formatTime(millisecond)
    local seconds = math.floor(millisecond / 1000)

    return string.format("%01d:%02d", (seconds / 60) % 60, seconds % 60)  
end

function onUpdatePost()
    setTextString('timeTxt', songName..' ('..formatTime(getSongPosition() - noteOffset)..')')
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    if songName == "Termination" then
		cameraShake('game', 0.006, 0.1)
	end
end