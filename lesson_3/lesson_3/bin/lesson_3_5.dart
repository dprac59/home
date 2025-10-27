//Дан список значений (и целые числа и строки). Вывести квадраты чисел
void main() {
  List inp = [1, "123", 4, 45, "saddddas", 67];
  var x;
  for (x in inp) {
    if (x.runtimeType == String) continue;
    print(x * x);
  }
}
