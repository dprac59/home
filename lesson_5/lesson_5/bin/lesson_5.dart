import "dart:io";

void main(){
  String? a = stdin.readLineSync();

  var n = int.parse(a!);

  say(n);
  one();
  cube(3);

}


void say(int n){
  for (var i = 0; i <n; i++) {
    print("Hello World");

  }

}
void one()=>print("hi");
void cube(int x)=> print(x*x*x);
  
