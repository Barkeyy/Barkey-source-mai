function onCreate()
	makeLuaSprite('backyard', 'barkey/backyard',-170, -200);
	setScrollFactor('backyard', 1, 1);
	scaleObject('backyard', 0.75, 0.75);
	addLuaSprite('backyard', false);





    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end