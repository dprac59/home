List<int> filterList(List<int> nums, bool Function(int) predicate) {
  return nums.where(predicate).toList();
}

bool isEven(int n) => n % 2 == 0;
bool isPositive(int n) => n > 0;

bool Function(int) greaterThan(int t) {
  return (int n) => n > t; // Явно указываем тип возвращаемой функции
}

void main() {
  int n = 5;
  List<int> nums = [1, -2, 3, 4, -5];
  int op = 3; // 1 — isEven, 2 — isPositive, 3 — greaterThan
  int t = 2; // Порог для greaterThan

  List<int> result;
  if (op == 1) {
    result = filterList(nums, isEven);
  } else if (op == 2) {
    result = filterList(nums, isPositive);
  } else if (op == 3) {
    final pred = greaterThan(t); // Теперь pred имеет тип bool Function(int)
    result = filterList(nums, pred);
  } else {
    print("Некорректный код операции");
    return;
  }

  print(result.join(" "));
}
