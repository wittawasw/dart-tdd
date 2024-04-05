from datetime import datetime, timedelta

months = {
  "3": [31, 31],
  "4": [30, 3000],
  "5": [31, 3100],
  "6": [30, 3000],
  "7": [31, 31],
}

months_arr = [31, 3000, 3100, 3000, 31]

def getBudgets(from_date, to_date):
  from_date = datetime.strptime(from_date, "%Y-%m-%d")
  to_date   = datetime.strptime(to_date, "%Y-%m-%d")

  if (to_date - from_date).days < 0:
    return "Error"

  values = []
  current_date = from_date

  while current_date <= to_date:
    values.append(months[str(current_date.month)][1] / months[str(current_date.month)][0])
    current_date += timedelta(days=1)

  return sum(values)

def testGetBudgets(from_date, to_date, expect):
  test_case = "Test: " + from_date + " : " + to_date + " = "

  actual = getBudgets(from_date, to_date)
  if actual == expect:
    return test_case + "Passed"
  else:
    return test_case + "Failed" + "\n" + f"Expected: {expect}, got {actual}"


print(testGetBudgets("2024-07-02", "2024-07-04", 3))
print(testGetBudgets("2024-07-04", "2024-07-02", "Error"))
print(testGetBudgets("2024-06-20", "2024-07-04", 1100 + 4))
print(testGetBudgets("2024-03-10", "2024-07-02", 22 + 9100 + 2))
print(testGetBudgets("2024-06-18", "2024-07-04", 1100 + 4))
