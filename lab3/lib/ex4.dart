import 'dart:async';

Future<void> main() async {
  Stream<int> numbers = Stream.fromIterable([1, 2, 3, 4, 5]);

  Stream<int> result = numbers
      .map((number) => number * number)
      .where((square) => square % 2 == 0);

  await for (var value in result) {
    print("Value: $value");
  }
}

