import 'dart:async';

void main() async {
  await loadData();
  String? name;

  print(name ?? "Default Name");

  String? text = "Hello";
  print(text?.length);

  String? language = "Dart";
  print(language!.length);

  Stream<int> stream = numberStream();

  await for (int number in stream) {
    print("Stream value: $number");
  }
}

Future<void> loadData() async {
  print("Loading data...");

  await Future.delayed(Duration(seconds: 2));

  print("Data loaded!");
}

Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(milliseconds: 500));

    yield i;
  }
}