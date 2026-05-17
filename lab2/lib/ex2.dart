void main() {
  //list
  List<int> number = [1, 2, 3, 4, 5];
  print("List: $number");

//operator
  int a = 5;
  int b = 3;

  print("a + b = ${a + b}");
  print("a - b = ${a - b}");
  print("a > b = ${a > b}");

//set
  Set<int> uniqueNumber = {1, 2, 3, 4, 5, 6, 7, 8};
  uniqueNumber.add(10);
  uniqueNumber.remove(4);
  
  print("set: $uniqueNumber");

// map
  Map<String, int> scores = {"Math": 9,"English": 8,};
  scores["Physics"] = 10;

  print("Map: $scores");
  print("Math score: ${scores["Math"]}");

//



}
