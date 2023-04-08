local shift = 0

function onCreate()
	-- background shit
	
	makeLuaSprite('sky', 'expo/voca/nightsky',-280, -100);
	addLuaSprite('sky',flase)
	setScrollFactor('sky', 0.6, 0.6);
	scaleObject('sky', 1.1, 1.1);
	--setScrollFactor('sky', 0.9, 0.9);

	makeLuaSprite('backlights', 'expo/voca/backlight',-285, -100);
	addLuaSprite('backlights',flase)
	setScrollFactor('backlights', 0.7, 0.7);
	scaleObject('backlights', 1.1, 1.1);
	
	makeLuaSprite('concerttop', 'expo/voca/concerttop',-285, -100);
	addLuaSprite('concerttop',flase)
	setScrollFactor('concerttop', 0.75, 0.75);
	scaleObject('concerttop', 1.1, 1.1);

	makeLuaSprite('stadium', 'expo/voca/stadiumback',-420, -100);
	addLuaSprite('stadium',flase)
	setScrollFactor('stadium', 0.9, 0.9);
	scaleObject('stadium', 1.1, 1.1);

	makeLuaSprite('speakers', 'expo/voca/speakers',-285, -100);
	addLuaSprite('speakers',flase)
	setScrollFactor('speakers', 0.9, 0.9);
	scaleObject('speakers', 1.1, 1.1);

	makeLuaSprite('stagefront', 'expo/voca/mainstage',-285, -100);
	addLuaSprite('stagefront',flase)
	--setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	makeLuaSprite('name', 'songnames/voca',1800, 350);
	addLuaSprite('name',flase)
	setScrollFactor('name', 0.9, 0.9);
	scaleObject('name', 1.1, 1.1);

	makeAnimatedLuaSprite('fans','expo/voca/crowd',-205, 685) --fix later
	addAnimationByPrefix('fans','bop','crowdbump',24,true)
	addAnimationByPrefix('fans','cheer','crowdcheer',24,true)
	addAnimationByPrefix('fans','miss','crowdmiss',24,true)
	setScrollFactor('fans', 0.9, 0.9);
	addLuaSprite('fans',true)
	objectPlayAnimation('fans','bop',false)
	scaleObject('fans', 1.5, 1.5);

	makeAnimatedLuaSprite('lights','expo/spotlightdance',-1000, -100) --fix later
	addAnimationByPrefix('lights','light1','spotlightdance1',24,true) -- 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, "", 24, true);
	addAnimationByPrefix('lights','light2','spotlightdance1',24,true) --14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, "", 24, true);
	setScrollFactor('lights', 0.9, 0.9);
	addLuaSprite('lights',true)
	objectPlayAnimation('lights','lights1',false)
	objectPlayAnimation('lights','lights2',false)
	scaleObject('lights', 1.30, 1.30);

	makeLuaSprite('blackscreen', 'expo/chance/blacksocool',-9285, -100);
	addLuaSprite('blackscreen',true)
	setScrollFactor('blackscreen', 0.8, 0.8);
	scaleObject('blackscreen', 1.60, 1.60);

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit( ... )--for every beat
	objectPlayAnimation('fans','bop',true)
	objectPlayAnimation('lights','light1',true)
	objectPlayAnimation('lights','light2',true)


	if curBeat == 317 then
		setProperty('blackscreen.x',getProperty('blackscreen.x')+9000)
	end

	--addLuaSprite('name',flase)
	
		--setProperty('name.x',getProperty('name.x')+2)
		


	--if curBeat == 1 then
		--setProperty('name.x',getProperty('name.x')-265)
		--setProperty('name.angle',shift)
	--end

	--if curBeat == 8 then
		--setProperty('name.x',getProperty('name.x')+265)
		--setProperty('name.angle',shift)
	--end

	
end

--function onUpdate( ... )
	--shift = shift + 0
		--setProperty('name.x',getProperty('name.x')+0.1)
		--setProperty('name.angle',shift)
--end