bool date(int day, int month, int year) {
  if (year < 1) {
    return false;
  }

  if (month < 1 || month > 12) {
    return false;
  }

  int maxDay;
  switch (month) {
    case 1: // Январь
    case 3: // Март
    case 5: // Май
    case 7: // Июль
    case 8: // Август
    case 10: // Октябрь
    case 12: // Декабрь
      maxDay = 31;
      break;
    case 4: // Апрель
    case 6: // Июнь
    case 9: // Сентябрь
    case 11: // Ноябрь
      maxDay = 30;
      break;
    case 2: // Февраль
      maxDay = 28; // Без учёта високосных годов
      break;
    default:
      return false;
  }

  return day >= 1 && day <= maxDay;
}

void main() {
  // Примеры использования
  print(date(29, 2, 2020)); // false (февраль всегда 28 дней)
  print(date(28, 2, 2021)); // true
  print(date(31, 4, 2021)); // false (в апреле 30 дней)
  print(date(1, 13, 2021)); // false (некорректный месяц)
}
