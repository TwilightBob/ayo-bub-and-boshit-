function onCreate()
	makeLuaSprite('house', 'house', -600, -300);
	setScrollFactor('house', 0.9, 0.9);

        makeAnimatedLuaSprite('st', 'staticEffect', -100, -80); -- static layer
	setScrollFactor('st', 0, 0);
	addAnimationByPrefix('st', 'first', 'Símbolo 1', 24, false);
	objectPlayAnimation('st', 'first');
	scaleObject('st', 0.735, 0.735);

	addLuaSprite('house', false);
	addLuaSprite('ho', true);
	
end

function onStepHit()				-- static anim
	-- triggered 4 times per section
	if curStep % 2 == 0 then
		objectPlayAnimation('st', 'first');
	end
end