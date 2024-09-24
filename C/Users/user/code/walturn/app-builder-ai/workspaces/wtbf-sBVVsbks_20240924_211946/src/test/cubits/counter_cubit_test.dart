
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:counter_multiplication/cubits/counter_cubit.dart';

void main() {
	group('CounterCubit', () {
		blocTest<CounterCubit, CounterState>(
			'emits [10] when increment is called with initial state 1',
			build: () => CounterCubit(),
			act: (cubit) => cubit.increment(),
			expect: () => [CounterState(10)],
		);

		blocTest<CounterCubit, CounterState>(
			'emits [100] when increment is called twice with initial state 1',
			build: () => CounterCubit(),
			act: (cubit) {
				cubit.increment();
				cubit.increment();
			},
			expect: () => [CounterState(10), CounterState(100)],
		);

		blocTest<CounterCubit, CounterState>(
			'emits [0] when increment is called with initial state 0',
			build: () => CounterCubit(initialValue: 0),
			act: (cubit) => cubit.increment(),
			expect: () => [CounterState(0)],
		);
	});
}
