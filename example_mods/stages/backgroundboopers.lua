function onCreate()
    makeAnimatedLuaSprite('backgroundboopers', 'backgroundboopers', -800, -1000);
    addAnimationByPrefix('recolor', 'backgroundboopers', 'backgroundboopers idle', 24, true);
    -- the less scroll factor the more the sprite is stuck to the camera
    setScrollFactor('backgroundboopers', 0.8, 0.9);
    scaleObject('backgroundboopers',6, 6);
    addLuaSprite('backgroundboopers', false );
    setPropertyLuaSprite('backgroundboopers', 'antialiasing', true);


    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end