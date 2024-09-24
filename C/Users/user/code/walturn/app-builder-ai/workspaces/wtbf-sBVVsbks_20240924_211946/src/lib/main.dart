
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/counter_cubit.dart';
import 'screens/home_screen.dart';

void main() {
	runApp(MainApp());
}

class MainApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Counter Multiplication',
			home: BlocProvider(
				create: (_) => CounterCubit(),
				child: HomeScreen(),
			),
		);
	}
}
