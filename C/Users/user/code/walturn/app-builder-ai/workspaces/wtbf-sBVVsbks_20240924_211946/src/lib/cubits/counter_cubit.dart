
import 'package:flutter_bloc/flutter_bloc.dart';

// CounterState class to hold the counter value
class CounterState {
	final int value;
	
	CounterState(this.value);
}

// CounterCubit class to manage the counter state
class CounterCubit extends Cubit<CounterState> {
	CounterCubit({int initialValue = 1}) : super(CounterState(initialValue));
	
	void increment() {
		final newValue = state.value != 0 ? state.value * 10 : 0;
		emit(CounterState(newValue));
	}
}
