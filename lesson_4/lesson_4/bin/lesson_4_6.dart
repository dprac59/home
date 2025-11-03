void main() {
  List<String> names = ['Anna', 'Igor', 'Dasha', 'Ivan', 'Olga'];

  // Сортируем список имён по алфавиту
  names.sort();

  // Первое и последнее имя по алфавиту
  String firstAlphabetically = names.first;
  String lastAlphabetically = names.last;

  // Количество имён, начинающихся на букву "I"
  int countI = names.where((name) => name.startsWith('I')).length;

  // Выводим результаты
  print("Первое по алфавиту: $firstAlphabetically");
  print("Последнее по алфавиту: $lastAlphabetically");
  print("Количество имён, начинающихся на букву 'I': $countI");
}
