
class Counter {
	int _value;

	Counter({required int value}) : _value = value;

	int get value => _value;

	set value(int newValue) {
		_value = newValue;
	}
}
