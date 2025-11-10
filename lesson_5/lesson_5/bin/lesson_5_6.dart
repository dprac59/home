List<int> cyclicShift(List<int> a, int q, {bool right = true}) {
  if (a.isEmpty) return a; // Если массив пустой, возвращаем его без изменений

  int n = a.length;
  q =
      q %
      n; // Нормализуем количество сдвигов (чтобы не делать лишние полные обороты)

  if (q == 0)
    return a; // Если сдвиг на 0 позиций, возвращаем массив без изменений

  if (right) {
    // Сдвиг вправо
    return a.sublist(n - q) + a.sublist(0, n - q);
  } else {
    // Сдвиг влево
    return a.sublist(q) + a.sublist(0, q);
  }
}

void main() {
  // Пример использования
  List<int> array = [1, 2, 3, 4, 5, 6];
  print(
    cyclicShift(array, 2, right: true),
  ); // Сдвиг вправо на 2: [5, 6, 1, 2, 3, 4]
  print(
    cyclicShift(array, 2, right: false),
  ); // Сдвиг влево на 2: [3, 4, 5, 6, 1, 2]
}
