import 'package:dart_tdd/fizzbuzz.dart';
import 'package:test/test.dart';

void main() {
  group('fizzbuzz', () {
    test('return input', () {
      expect(fizzbuzz(1), '1');
      expect(fizzbuzz(4), '4');
      expect(fizzbuzz(8), '8');
    });

    test('return fizz', () {
      expect(fizzbuzz(3), 'fizz');
      expect(fizzbuzz(6), 'fizz');
    });

    test('return buzz', () {
      expect(fizzbuzz(5), 'buzz');
      expect(fizzbuzz(10), 'buzz');
    });

    test('return fizzbuzz', () {
      expect(fizzbuzz(15), 'fizzbuzz');
      expect(fizzbuzz(30), 'fizzbuzz');
    });
  });
}
