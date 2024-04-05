import 'dart:async';

import 'package:dart_tdd/roman_number.dart';
import 'package:test/test.dart';

void main() {
  group('toInt', () {
    test('successfully called romanToInt', () async {
      RomanNumber rm =  RomanNumber(input: 'I');
      expect(await rm.toInt(), 1);
    });
  });

  group('static romanToInt', () {
    test('simple', () async {
      expect(await RomanNumber.romanToInt('I'), 1);
      expect(await RomanNumber.romanToInt('III'), 3);
      expect(await RomanNumber.romanToInt('V'), 5);
      expect(await RomanNumber.romanToInt('X'), 10);
    });

    test('complex', () async {
      expect(await RomanNumber.romanToInt('IV'), 4);
      expect(await RomanNumber.romanToInt('VI'), 6);
      expect(await RomanNumber.romanToInt('IX'), 9);
      expect(await RomanNumber.romanToInt('XII'), 12);
    });

    test('composite', () async {
      expect(await RomanNumber.romanToInt('XIV'), 14);
      expect(await RomanNumber.romanToInt('XIX'), 19);
      expect(await RomanNumber.romanToInt('XXII'), 22);
      expect(await RomanNumber.romanToInt('XXIV'), 24);
    });
  });
}
