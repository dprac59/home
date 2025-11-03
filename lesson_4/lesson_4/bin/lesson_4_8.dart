void main() {
  List<String> passwords = [
    'abc',
    'abcd',
    'abcde',
    'xyz',
    'xyza',
    'xyzab',
    'pqr',
    'pqrs',
  ];

  int maxChanges = 0;
  Map<String, int> passwordChanges = {};

  for (int i = 0; i < passwords.length; i++) {
    bool isNewAccount = true;
    for (int j = 0; j < i; j++) {
      if (passwords[i].startsWith(passwords[j])) {
        isNewAccount = false;
        break;
      }
    }
    if (isNewAccount) {
      passwordChanges[passwords[i]] = 1;
    } else {
      passwordChanges[passwords[i]] = passwordChanges[passwords[i]]! + 1;
    }
  }

  // Находим максимальное количество изменений
  for (var changes in passwordChanges.values) {
    if (changes > maxChanges) {
      maxChanges = changes;
    }
  }

  print(maxChanges);
}
