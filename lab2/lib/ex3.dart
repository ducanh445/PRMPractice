import 'dart:math';

void main(){

  // if/else
  int score = 7;
  if(score>=9){
    print("grade: A");
  }else if(score<7){
    print("grade: C");
  } else{
    print("grade:B");
  }

  //swich
  String day ="Monday";
  switch(day){
    case"Monday":
      print("dau tuan");
      break;
    case"Sunday":
      print("cuoi tuan");
      break;
    default:
      print("ngay thuong");
      break;
  }
  //loop
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int i = 0; i < numbers.length; i++) {
    print("For loop index $i: ${numbers[i]}");
  }

  for (int n in numbers) {
    print("For-in: $n");
  }

  numbers.forEach((n) => print("forEach: $n"));

  // functions
  int add(int x, int y) {
    return x + y;
  }

  int multiply(int x, int y) => x * y;

  print("Add: ${add(2, 3)}");
  print("Multiply: ${multiply(4, 5)}");
}