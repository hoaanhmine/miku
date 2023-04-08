function onCreate()
	-- background shit
	
	--makeLuaSprite('sky', 'expo/nightsky',-225, -100);
	makeLuaSprite('sky', 'expo/nightsky',-280, -100);
	addLuaSprite('sky',flase)
	setScrollFactor('sky', 0.6, 0.6);
	scaleObject('sky', 1.1, 1.1);
	--setScrollFactor('sky', 0.9, 0.9);

	makeLuaSprite('backlights', 'expo/backlight',-285, -100);
	addLuaSprite('backlights',flase)
	setScrollFactor('backlights', 0.7, 0.7);
	scaleObject('backlights', 1.1, 1.1);
	
	makeLuaSprite('concerttop', 'expo/concerttop',-285, -100);
	addLuaSprite('concerttop',flase)
	setScrollFactor('concerttop', 0.75, 0.75);
	scaleObject('concerttop', 1.1, 1.1);

	makeLuaSprite('stadium', 'expo/stadiumback',-420, -100);
	addLuaSprite('stadium',flase)
	setScrollFactor('stadium', 0.9, 0.9);
	scaleObject('stadium', 1.1, 1.1);

	makeLuaSprite('speakers', 'expo/speakers',-285, -100);
	addLuaSprite('speakers',flase)
	setScrollFactor('speakers', 0.9, 0.9);
	scaleObject('speakers', 1.1, 1.1);

	makeLuaSprite('stagefront', 'expo/mainstage',-285, -100);
	addLuaSprite('stagefront',flase)
	--setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	makeAnimatedLuaSprite('fans','expo/crowdbump',-205, 685) --fix later
	addAnimationByPrefix('fans','bop','crowdbump',24,true)
	addAnimationByPrefix('fans','cheer','crowdcheer',24,true)
	addAnimationByPrefix('fans','miss','crowdmiss',24,true)
	setScrollFactor('fans', 0.9, 0.9);
	addLuaSprite('fans',true)
	objectPlayAnimation('fans','bop',false)
	scaleObject('fans', 1.5, 1.5);

	makeLuaSprite('spotlights', 'expo/chance/focus_light',-9285, -100);
	addLuaSprite('spotlights',true)
	setScrollFactor('spotlights', 0.95, 0.95);
	scaleObject('spotlights', 1.60, 1.60);

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
	
	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit( ... )--for every beat
	objectPlayAnimation('fans','bop',true)
	objectPlayAnimation('lights','lights1',true)
	objectPlayAnimation('lights','lights2',true)

	--if curBeat == 5 then
		--setProperty('defaultCamZoom',1)
	--end

	--if curBeat == 8 then
		--setProperty('defaultCamZoom',0)
	--end


	if curBeat == 198 then
		setProperty('blackscreen.x',getProperty('blackscreen.x')+9000)
	end

	if curBeat == 200 then
		setProperty('spotlights.x',getProperty('spotlights.x')+9000)
	end

	if curBeat == 205 then
		setProperty('blackscreen.x',getProperty('blackscreen.x')-9000)
	end

	if curBeat == 264 then
		setProperty('spotlights.x',getProperty('spotlights.x')-9000)
	end
	--if curBeat == 10 then
	--	objectPlayAnimation('fans','bop',true)
	--end

end
