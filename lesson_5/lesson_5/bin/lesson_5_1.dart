import "dart:io";



void main(){
  String? txt = stdin.readLineSync();

  say(txt);
}
void say(String? txt){
  for (var i = 0; i < 10; i++) {
    print(txt);
  }
}