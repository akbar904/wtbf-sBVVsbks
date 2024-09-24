
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_multiplication/screens/home_screen.dart';

class MockCounterCubit extends MockCubit<int> implements CounterCubit {}

void main() {
	group('HomeScreen', () {
		late CounterCubit counterCubit;

		setUp(() {
			counterCubit = MockCounterCubit();
		});

		testWidgets('renders CounterDisplay with initial value', (WidgetTester tester) async {
			when(() => counterCubit.state).thenReturn(0);

			await tester.pumpWidget(
				MaterialApp(
					home: BlocProvider.value(
						value: counterCubit,
						child: HomeScreen(),
					),
				),
			);

			expect(find.text('0'), findsOneWidget);
		});

		testWidgets('renders IncrementButton', (WidgetTester tester) async {
			when(() => counterCubit.state).thenReturn(0);

			await tester.pumpWidget(
				MaterialApp(
					home: BlocProvider.value(
						value: counterCubit,
						child: HomeScreen(),
					),
				),
			);

			expect(find.byType(IncremementButton), findsOneWidget);
		});

		testWidgets('tapping IncrementButton calls increment on CounterCubit', (WidgetTester tester) async {
			when(() => counterCubit.state).thenReturn(0);
			when(() => counterCubit.increment()).thenReturn(null);

			await tester.pumpWidget(
				MaterialApp(
					home: BlocProvider.value(
						value: counterCubit,
						child: HomeScreen(),
					),
				),
			);

			await tester.tap(find.byType(IncremementButton));
			verify(() => counterCubit.increment()).called(1);
		});
	});
}
