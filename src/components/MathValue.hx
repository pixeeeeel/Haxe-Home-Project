class MathValue {
	var value:Int = 0;

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
		return value;
	}

	public function addValue(number:Int) {
		if(number <= 10 || number > 0) {
			add(number);
		}
	}

	public function minusValue(number:Int) {
		if(number <= 10 || number > 0) {
			minus(number);
		}
	}
}