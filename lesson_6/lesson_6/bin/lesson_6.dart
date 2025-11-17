int inc(int n) => n + 1;
int dbl(int n) => n * 2;

int applyTwice(int Function(int) f, int x) {
  return f(f(x));
}

void main() {
  // Пример входных данных
  int x = 5;
  int op = 1; // 1 для inc, 2 для dbl

  int result;
  if (op == 1) {
    result = applyTwice(inc, x);
  } else if (op == 2) {
    result = applyTwice(dbl, x);
  } else {
    print("Некорректный код операции");
    return;
  }

  print(result);
}
