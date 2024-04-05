import 'package:dart_tdd/roman_number.dart';
import 'package:test/test.dart';

void main() {
  group('toInt', () {
    test('successfully called romanToInt', () {
      RomanNumber rm =  RomanNumber(input: 'I');
      expect(rm.toInt(), 1);
    });
  });

  group('static romanToInt', () {
    test('simple', () {
      expect(RomanNumber.romanToInt('I'), 1);
      expect(RomanNumber.romanToInt('III'), 3);
      expect(RomanNumber.romanToInt('V'), 5);
      expect(RomanNumber.romanToInt('X'), 10);
    });

    test('complex', () {
      expect(RomanNumber.romanToInt('IV'), 4);
      expect(RomanNumber.romanToInt('VI'), 6);
      expect(RomanNumber.romanToInt('IX'), 9);
      expect(RomanNumber.romanToInt('XII'), 12);
    });

    test('composite', () {
      expect(RomanNumber.romanToInt('XIV'), 14);
      expect(RomanNumber.romanToInt('XIX'), 19);
      expect(RomanNumber.romanToInt('XXII'), 22);
      expect(RomanNumber.romanToInt('XXIV'), 24);
    });
  });
}
