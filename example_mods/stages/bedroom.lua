function onCreate()
	makeLuaSprite('bedroom', 'barkey/bedroom',-300, -200);
	setScrollFactor('bedroom', 1, 1);

	addLuaSprite('bedroom', false);





    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end