
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_multiplication/cubits/counter_cubit.dart';

class IncrementButton extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final counterCubit = context.read<CounterCubit>();

		return ElevatedButton(
			onPressed: () {
				counterCubit.increment();
			},
			child: Text('Increment'),
		);
	}
}
