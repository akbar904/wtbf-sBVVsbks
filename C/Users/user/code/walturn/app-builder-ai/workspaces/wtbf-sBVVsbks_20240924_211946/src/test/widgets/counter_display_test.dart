
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_multiplication/widgets/counter_display.dart';
import 'package:counter_multiplication/cubits/counter_cubit.dart';

void main() {
	group('CounterDisplay widget tests', () {
		testWidgets('should display initial counter value as 0', (WidgetTester tester) async {
			await tester.pumpWidget(
				MaterialApp(
					home: BlocProvider(
						create: (_) => CounterCubit(),
						child: CounterDisplay(),
					),
				),
			);

			expect(find.text('0'), findsOneWidget);
		});

		testWidgets('should display updated counter value when state changes', (WidgetTester tester) async {
			final counterCubit = CounterCubit();

			await tester.pumpWidget(
				MaterialApp(
					home: BlocProvider(
						create: (_) => counterCubit,
						child: CounterDisplay(),
					),
				),
			);

			counterCubit.increment();
			await tester.pump();

			expect(find.text('10'), findsOneWidget);
		});
	});
}
