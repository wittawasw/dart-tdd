import 'package:dart_tdd/roman_number.dart';
import 'package:test/test.dart';

void main() {
  group('romanToInt', () {
    test('simple', () {
      expect(romanToInt('I'), 1);
      expect(romanToInt('III'), 3);
      expect(romanToInt('V'), 5);
      expect(romanToInt('X'), 10);
    });

    test('complex', () {
      expect(romanToInt('IV'), 4);
      expect(romanToInt('VI'), 6);
      expect(romanToInt('IX'), 9);
      expect(romanToInt('XII'), 12);
    });

    test('composite', () {
      expect(romanToInt('XIV'), 14);
      expect(romanToInt('XIX'), 19);
      expect(romanToInt('XXII'), 22);
      expect(romanToInt('XXIV'), 24);
    });
  });

  // test('intToRoman', () {
  //   expect(intToRoman(1), 'I');
  //   expect(intToRoman(3), 'III');
  //   expect(intToRoman(4), 'V');
  //   expect(intToRoman(5), 'IV');
  //   expect(intToRoman(9), 'IX');
  //   expect(intToRoman(10), 'X');
  // });
}
