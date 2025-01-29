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

    test('should return sum for two comma separated numbers', () {
      expect(calculator.add("1,2"), equals(3));
      expect(calculator.add("5,7"), equals(12));
    });

    test('should handle newlines between numbers', () {
      expect(calculator.add("1\n2,3"), equals(6));
      expect(calculator.add("1,2\n3"), equals(6));
      expect(calculator.add("1\n2\n3"), equals(6));
    });

    test('should support custom delimiters', () {
      expect(calculator.add("//;\n1;2"), equals(3));
      expect(calculator.add("//.\n2.3.4"), equals(9));
      expect(calculator.add("//p\n1p2p3"), equals(6));
    });
  });
}
