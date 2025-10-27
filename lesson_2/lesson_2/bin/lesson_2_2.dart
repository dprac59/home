import "dart:io";

void main() {
  bool cl1, cl2;

  int? x1, y1, x2, y2, sum1, sum2;
  String? a, b, c, d;
  print("Enter x1 ");
  a = stdin.readLineSync();
  x1 = int.parse(a!);
  print("Enter y1 ");
  b = stdin.readLineSync();
  y1 = int.parse(b!);
  print("Enter x2 ");
  c = stdin.readLineSync();
  x2 = int.parse(c!);
  print("Enter y2 ");
  d = stdin.readLineSync();
  y2 = int.parse(d!);
  sum1 = x1 + y1;
  sum2 = x2 + y2;
  if (sum1 % 2 != 0) {
    print("первая клекта нечетная - белая");
    cl1 = false;
  } else {
    print("первая клекта четная - черная");
    cl1 = true;
  }
  if (sum2 % 2 != 0) {
    print("первая клекта нечетная - белая");
    cl2 = false;
  } else {
    print("первая клекта четная - черная");
    cl2 = true;
  }
  if (cl1 == cl2) {
    print('yes');
  } else {
    print('no');
  }
}
