import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_flutter_assignment/string_calculator.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  group('StringCalculator', () {
    test('should return 0 for empty string', () {
      expect(calculator.add(""), equals(0));
    });

    test('should return the number for single number input', () {
      expect(calculator.add("1"), equals(1));
      expect(calculator.add("5"), equals(5));
    });
  });
} 