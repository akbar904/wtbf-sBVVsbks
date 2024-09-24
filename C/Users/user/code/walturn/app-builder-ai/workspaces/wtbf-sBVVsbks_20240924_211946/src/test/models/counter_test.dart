
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:counter_multiplication/models/counter.dart';

void main() {
	group('Counter Model Tests', () {
		test('Counter model should initialize with a value', () {
			final counter = Counter(value: 1);
			expect(counter.value, 1);
		});

		test('Counter model should correctly update its value', () {
			final counter = Counter(value: 1);
			counter.value = 10;
			expect(counter.value, 10);
		});
	});
}
