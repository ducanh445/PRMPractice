import 'dart:async';

Future<void> main() async {
  print("Start");

  Future(() {
    print("Future Event");
  });

  scheduleMicrotask(() {
    print("Microtask");
  });

  print("End");

  await Future.delayed(Duration(seconds: 1));
}

