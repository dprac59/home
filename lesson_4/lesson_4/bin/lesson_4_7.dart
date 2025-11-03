void main() {
  // Координаты ферзей (x и y)
  List<int> x = [1, 2, 3, 4, 5, 6, 7, 8]; // Пример координат, можно изменить
  List<int> y = [1, 2, 3, 4, 5, 6, 7, 8]; // Пример координат, можно изменить

  bool isAttacking = false;

  // Проверяем все пары ферзей
  for (int i = 0; i < 8; i++) {
    for (int j = i + 1; j < 8; j++) {
      // Если ферзи находятся на одной горизонтали, вертикали или диагонали
      if (x[i] == x[j] || y[i] == y[j] || (x[i] - x[j]).abs() == (y[i] - y[j]).abs()) {
        isAttacking = true;
        break;
      }
    }
    if (isAttacking) break;
  }

  // Выводим результат
  if (isAttacking) {
    print("YES");
  } else {
    print("NO");
  }
}
