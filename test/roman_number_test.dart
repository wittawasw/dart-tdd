import 'package:dart_tdd/roman_number.dart';
import 'package:test/test.dart';

void main() {
  test('romanToInt', () {
    expect(romanToInt('I'), 1);
    expect(romanToInt('III'), 3);
    expect(romanToInt('IV'), 4);
    expect(romanToInt('V'), 5);
    expect(romanToInt('IX'), 9);
    expect(romanToInt('X'), 10);
  });
}
