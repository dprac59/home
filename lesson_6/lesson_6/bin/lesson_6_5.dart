Function counter() {
  int count = 0; // Внутренняя переменная-счётчик

  return () {
    count += 1; // Увеличиваем счётчик на 1
    return count; // Возвращаем текущее значение счётчика
  };
}

void main() {
  // Создаём замыкание
  final closure = counter();

  // Демонстрируем работу замыкания
  print(closure()); // Выведет: 1
  print(closure()); // Выведет: 2
  print(closure()); // Выведет: 3

  // Создаём новое замыкание
  final newClosure = counter();

  // Демонстрируем работу нового замыкания
  print(newClosure()); // Выведет: 1
  print(newClosure()); // Выведет: 2
  print(newClosure()); // Выведет: 3
}
