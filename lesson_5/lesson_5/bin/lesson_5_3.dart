import "dart:io";


void main(){
  print("Enter num ");
  String? a1 =stdin.readLineSync(); 
  double a2 = double.parse(a1!);

  print("Enter years ");
  String? b1 =stdin.readLineSync(); 
  double b2 = double.parse(b1!);
  bank(a2,b2);
}
void bank(double a,double years){
  var sum = a ;
  for (var i = 0; i < years; i++) {
    sum = sum + 0.1 * sum;
    print(sum);
    
    
  }
}