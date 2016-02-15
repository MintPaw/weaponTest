package ;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.addons.weapon.FlxWeapon;

class MainState extends FlxState
{
	var w:FlxWeapon;
	var c:Int = 0;

	public function new() {
		super();
	}

	override public function create():Void
	{
		var p = new FlxSprite();
		p.x = p.y = 100;

		w = new FlxWeapon("wep");
		w.setBulletSpeed(100);
		w.setFireRate(100); 
		w.makePixelBullet(10);
		add(w.group);
	}

	override public function update():Void
	{
		if (c++ % 30 == 0) w.fireAtMouse();
		super.update();
	}

}
