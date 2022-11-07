function onCreate()
	-- background shit
	makeLuaSprite('town', 'town/NEOQT_REIMAGINEDBG', -1150, -370);
	addLuaSprite('town', false)
	scaleObject('town', 1.5, 1.5)

	makeLuaSprite('townTermination', 'town/termination/KBREIMAGINEDBG', -1150, -370);
	addLuaSprite('townTermination', false)
	scaleObject('townTermination', 1.5, 1.5)
	setProperty('townTermination.alpha',0)

	makeLuaSprite('sussy vent', 'town/NEOQT_REIMAGINEDFG', -500, 1000);
    addLuaSprite('sussy vent', true);
    setObjectCamera('sussy vent', 'game');
    scaleObject('sussy vent', 0.9, 0.9);

	makeAnimatedLuaSprite('bg404', 'town/KBMAD404_BGANIM', -1150, -370);
	addAnimationByPrefix('bg404', 'dance', 'KB404_MAD',24, true)
	addLuaSprite('bg404', false)
	scaleObject('bg404', 1.5, 1.5)
	setProperty('bg404.alpha',0)
end

function onEvent(n,v1,v2)
	if n == 'Town BG Change' then
		if v1 == 'red' then
			setProperty('townTermination.alpha',1)
			setProperty('town.alpha',0)
			setProperty('bg404.alpha',0)
		end
		if v1 == 'normal' then
			setProperty('townTermination.alpha',0)
			setProperty('town.alpha',1)
			setProperty('bg404.alpha',0)
		end
		if v1 == 'error' then
			setProperty('townTermination.alpha',0)
			setProperty('town.alpha',0)
			setProperty('bg404.alpha',1)
		end
	end
end