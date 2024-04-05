Map<String, int> romanNumbers = {
  'I': 1,
  'V': 5,
  'X': 10
};

int romanToInt(String input) {
  int result = 0;
  int prev = 0;

  for (int i = input.length - 1; i >= 0; i--) {
    int tmp = romanNumbers[input[i]]!;

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
