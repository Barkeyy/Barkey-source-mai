function onCreate() 

        makeLuaSprite('grass2', 'grass2', -100, -200);
	addLuaSprite('grass2',false)
        setLuaSpriteScrollFactor('grass2', 0.134, 0.9);
	
	makeLuaSprite('grass', 'grass', -200, -150);
	addLuaSprite('grass',false)
        setLuaSpriteScrollFactor('grass', 0.9, 0.9);

        makeAnimatedLuaSprite('backgroundboopers', 'backboopers', -100, -200);
        addAnimationByPrefix('recolor', 'backgroundboopers', 'backboopers idle', 24, true);
        -- the less scroll factor the more the sprite is stuck to the camera
        setScrollFactor('backgroundboopers', 0.8, 0.9);

        addLuaSprite('backgroundboopers', false);
        setPropertyLuaSprite('backgroundboopers', 'antialiasing', true);
end
	