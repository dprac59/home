int sumAnon(int a, int b) {
  // Создаём анонимную функцию и присваиваем её переменной sum
  var sum = (int x, int y) => x + y;

  // Вызываем анонимную функцию и возвращаем результат
  return sum(a, b);
}

void main() {
  // Пример использования
  int a = 5;
  int b = 7;
  int result = sumAnon(a, b);
  print(result); // Выведет 12
}
