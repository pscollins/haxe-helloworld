package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	var button:FlxButton;
	var colorButton:FlxButton;
	var playButton:FlxButton;
	var maxX = 300;
	var maxY = 300;


	function addRandomText() {
		var newX = Math.random() * maxX;
		var newY = Math.random() * maxY;

		add(new FlxText(newX, newY, 0, "Hello, World!"));
	}

	function incColor () {
		// trace(++bgColor);
		// bgColor = 0xFFFFFFFF;
		bgColor += 0xF;
	}

	/**
	 * Function that is called up when to state is created to set it up.
	 */
	override public function create():Void
	{
		button = new FlxButton(50, 50, "Add Text", addRandomText);
		colorButton = new FlxButton(300, 300, "Color?", incColor);
		playButton = new FlxButton(100, 100, "Start the game", function() {
				FlxG.switchState(new PlayState());
			});
		add(button);
		add(colorButton);
		add(playButton);

		bgColor = 0xFF00FF00;

		super.create();
	}

	/**
	 * Function that is called when this state is destroyed - you might want to
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{

		super.update();
	}
}