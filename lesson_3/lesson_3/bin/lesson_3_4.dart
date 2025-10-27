void main() {
  for (int i = 0; i <= 100; i++) {
    int sum = (i < 10) ? i : (i ~/ 10) + (i % 10);
    if (sum <= 9) {
      print(i);
    }
  }
}
