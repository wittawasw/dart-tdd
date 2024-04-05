import 'dart:async';

class RomanNumber {
  final String input;

  RomanNumber({required this.input});

  Future<int> toInt() {
    return romanToInt(this.input);
  }

  static final Map<String, int> romanNumbers = {
    'I': 1,
    'V': 5,
    'X': 10
  };

  static Future<int> romanToInt(String numberString) async {
    int result = 0;
    int prev = 0;

    for (int i = numberString.length - 1; i >= 0; i--) {
      int tmp = romanNumbers[numberString[i]]!;

      if (tmp < prev) {
        result -= tmp;
      }
      else {
        result += tmp;
      }

      prev = tmp;
    }

    return result;
  }
}

