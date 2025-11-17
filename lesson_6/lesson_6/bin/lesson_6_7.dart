Function bankAccount(double initialBalance) {
  double balance = initialBalance; // Внутренняя переменная для хранения баланса

  return (String operation, [double? amount]) {
    switch (operation) {
      case 'deposit':
        if (amount != null && amount > 0) {
          balance += amount;
          print('Баланс после пополнения: $balance');
        } else {
          print('Ошибка: некорректная сумма пополнения');
        }
        break;
      case 'withdraw':
        if (amount != null && amount > 0) {
          if (balance >= amount) {
            balance -= amount;
            print('Баланс после снятия: $balance');
          } else {
            print('Ошибка: недостаточно средств');
          }
        } else {
          print('Ошибка: некорректная сумма снятия');
        }
        break;
      case 'checkBalance':
        print('Текущий баланс: $balance');
        break;
      default:
        print('Ошибка: неизвестная операция');
    }
  };
}

void main() {
  // Создаём банковский счёт с начальным балансом 100
  var account = bankAccount(100);

  // Демонстрируем операции
  account('deposit', 50); // Баланс после пополнения: 150
  account('withdraw', 30); // Баланс после снятия: 120
  account('checkBalance'); // Текущий баланс: 120
  account('withdraw', 200); // Ошибка: недостаточно средств
  account('deposit', -10); // Ошибка: некорректная сумма пополнения
}
