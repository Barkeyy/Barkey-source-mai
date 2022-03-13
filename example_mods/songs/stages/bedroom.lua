function onCreate()
	makeLuaSprite('bedroom2', 'barkey/bedroom2', 0, -100);
	setScrollFactor('bedroom2', 0.9, 0.9);
	scaleObject('bedroom2', 0.75, 0.7);
	addLuaSprite('bedroom2', false);
	makeLuaSprite('bedroom3', 'barkey/bedroom3', -300, -100);
	setScrollFactor('bedroom3', 0.9, 0.9);
	scaleObject('bedroom3', 0.75, 0.7);
	addLuaSprite('bedroom3', false);
	makeLuaSprite('bedroom', 'barkey/bedroom', -200, -100);
	setScrollFactor('bedroom', 0.9, 1);
	scaleObject('bedroom', 0.75, 0.7);
	addLuaSprite('bedroom', false);
--I COULDNT GET ONE SPRITE TO FIT SO I MADE STUPID COPIES




    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end