import haxe.Timer;

class App {
	@:isVar public var firstName(get, never):Int;
	
	function get_firstName():Int {
		return firstName;
	}

	static public function main() {

	}
}

interface Back {
	
}

@:forward(push, pop, length) abstract MyArray<T>(Array<T>) {
	public inline function new() {
		this = [];
	}
}

abstract MathString(String) {
	public function new(i:String)
		this = i;

	@:op(A + B) public function repeat(value:String):MathString {
		return new MathString(this + ":" + value);
	}
}

abstract Test(String) {
	public function new(s:String) {
		this = s;
	}

	public function getValue():String {
		return "Value:" + this;
	}
}

class MathValue {
	private var value:Int;
	private var value2:String;

	public function new(number:Int) {
		value = number;
	}

	private function add(number:Int) {
		value += number;
	}

	private function minus(number:Int) {
		value -= number;
	}

	public function getValue():Int {
		changeValue("123");
		changeValue(1);
		return value;
	}

	public function addValue(number:Int) {
		if (number <= 10 || number > 0) {
			add(number);
		}
	}

	public function minusValue(number:Int) {
		if (number <= 10 || number > 0) {
			minus(number);
		}
	}

	private function changeValue<T>(value:T) {
		trace(value);
	}
}

interface Point {
	public function toString():String;
}

interface Point2 extends Point {}

class Points implements Point2 {
	public function new() {}

	public function toString():String {
		return "1";
	}
}