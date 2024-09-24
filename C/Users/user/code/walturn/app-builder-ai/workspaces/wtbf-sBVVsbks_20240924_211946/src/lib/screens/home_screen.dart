
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_multiplication/cubits/counter_cubit.dart';
import 'package:counter_multiplication/widgets/counter_display.dart';
import 'package:counter_multiplication/widgets/increment_button.dart';

class HomeScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Counter Multiplication'),
			),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						CounterDisplay(),
						IncrementButton(),
					],
				),
			),
		);
	}
}
