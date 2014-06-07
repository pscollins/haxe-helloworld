package source.card;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

enum Value {
	Ace;
	Two;
	Three;
	Four;
	Five;
	Six;
	Seven;
	Eight;
	Nine;
	Ten;
	Jack;
	Queen;
	King;
}

enum Suit {
	Spades;
	Hearts;
	Diamonds;
	Clubs
}

enum CardColors {
	Red;
	Blue;
}

enum CardErrors {
	BadCardValueError;
	BadCardStringError;
}

class Card extends FlxSprite {
	static var EXTENSION = "png";
	static var HOME = "assets/images";

	public var value(default, null):Value;
	var suit:Suit;
	var backColor:


	public function override new(_value, _suit, ?_backColor = Red) {
		value = _value;
		suit = _suit;
		backColor = _backColor;
	}

	public function toString() {
		var cardValue:Valuator = value;

		var valueChar = switch(cardValue) {
		case 1: "a";
		case v if (v <= 10): Std.string(v);
		case 11: "j";
		case 12: "q";
		case 13: "k";
		case _: throw BadCardValueError;
		}

		var suitChar = Std.string(suit).charAt(0).toLowerCase();

		return '${suitChar}${valueChar}';
	}

	public function fromString() {

	private function toFilename() {
		return '${toString()}.${EXTENSION}';
	}

	public function loadCardGraphic() {
		loadGraphic(toFilename());
	}

}

abstract Valuator(Int) {
	static var MAX_SUM = 21;

	inline public function new(i:Int) {
		this = i;
	}

	@:from
	static public function fromValue(value:Value) {
		return new Valuator(Type.getEnumIndex(value) + 1);
	}

	@:from
	static public function fromCardArray(cards:Array<Card>) {
		var aces = cards.filter(function(c:Card) {return c.get_value() == Ace;});
		var nonAces = cards.filter(function(c:Card) {return c.get_value != Ace;});

		var runningSum =
			nonAces.fold(function (v:Valuator, x:Int) {return v + x;}, 0)
			+ aces.length();

		if ((runningSum + 10) <= MAX_SUM) {
			return runningSum + 10;
		} else {
			return runningSum;
		}
	}
}
