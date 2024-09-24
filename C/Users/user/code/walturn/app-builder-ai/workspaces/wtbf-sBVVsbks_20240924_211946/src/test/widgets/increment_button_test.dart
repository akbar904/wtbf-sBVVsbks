
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

// Importing only the file to be tested
import 'package:counter_multiplication/widgets/increment_button.dart';

// Mock for the CounterCubit, which is used within IncrementButton
class MockCounterCubit extends MockCubit<int> implements CounterCubit {}

void main() {
	group('IncrementButton Widget Tests', () {
		late CounterCubit counterCubit;

		setUp(() {
			counterCubit = MockCounterCubit();
		});

		testWidgets('renders IncrementButton with correct text', (WidgetTester tester) async {
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: BlocProvider<CounterCubit>(
							create: (context) => counterCubit,
							child: IncrementButton(),
						),
					),
				),
			);

			expect(find.text('Increment'), findsOneWidget);
		});

		testWidgets('calls increment on tap', (WidgetTester tester) async {
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: BlocProvider<CounterCubit>(
							create: (context) => counterCubit,
							child: IncrementButton(),
						),
					),
				),
			);

			await tester.tap(find.byType(ElevatedButton));
			verify(() => counterCubit.increment()).called(1);
		});
	});
}
