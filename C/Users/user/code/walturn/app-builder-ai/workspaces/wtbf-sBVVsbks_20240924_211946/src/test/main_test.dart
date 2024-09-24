
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_multiplication/main.dart';

class MockCounterCubit extends MockCubit<int> implements CounterCubit {}

void main() {
	group('MainApp', () {
		testWidgets('renders HomeScreen', (WidgetTester tester) async {
			await tester.pumpWidget(MainApp());
			expect(find.byType(HomeScreen), findsOneWidget);
		});
	});
}
