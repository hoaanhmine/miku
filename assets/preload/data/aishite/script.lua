local shift = 0

function onCreatePost()

	makeLuaSprite('name', 'songnames/aishite',1470, 230); --1800, 350
	addLuaSprite('name',flase)
	setScrollFactor('name', 0.9, 0.9);
	scaleObject('name', 1.1, 1.1);

end

function onBeatHit()
	addLuaSprite('name',flase)

	if curBeat == 1 then
		setProperty('name.x',getProperty('name.x')-465)
		setProperty('name.angle',shift)
	end

	if curBeat == 4 then
		setProperty('name.x',getProperty('name.x')+865)
		setProperty('name.angle',shift)
	end


end