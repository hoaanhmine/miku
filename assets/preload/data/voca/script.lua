local shift = 0

function onCreatePost()

	makeLuaSprite('name', 'songnames/voca',1800, 330); --1800, 350
	addLuaSprite('name',flase)
	setScrollFactor('name', 0.9, 0.9);
	scaleObject('name', 1.1, 1.1);

end

function onBeatHit()
	addLuaSprite('name',flase)

	if curBeat == 1 then
		setProperty('name.x',getProperty('name.x')-265)
		setProperty('name.angle',shift)
	end

	if curBeat == 8 then
		setProperty('name.x',getProperty('name.x')+265)
		setProperty('name.angle',shift)
	end


end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('vocacutscene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end


function onEndSong()
    if isStoryMode and not seenCutscene then
        startVideo('creditsend')
        seenCutscene = true
        return Function_Stop
    end
    return Function_Continue
end