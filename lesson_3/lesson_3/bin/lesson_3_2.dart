void main() {
  var a = 100;
  while (a != 0) {
    print(a);

    if (a % 2 == 0) {
      print("четное");
    } else {
      print("нечетное");
    }
    a--;
  }
  print(0);
}
