package;


import openfl.display.Sprite;


class Main extends Sprite {
	
	
	public function new () {
		
		super ();
		
		var flixel:flixel.FlxGame = new flixel.FlxGame(640, 480, MainState);
		addChild(flixel);
		
	}
	
	
}
