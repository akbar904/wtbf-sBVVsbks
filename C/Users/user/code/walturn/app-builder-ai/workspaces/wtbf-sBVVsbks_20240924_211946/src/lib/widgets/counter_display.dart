
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_multiplication/cubits/counter_cubit.dart';

class CounterDisplay extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return BlocBuilder<CounterCubit, CounterState>(
			builder: (context, state) {
				return Center(
					child: Text(
						'${state.value}',
						style: TextStyle(fontSize: 24),
					),
				);
			},
		);
	}
}
