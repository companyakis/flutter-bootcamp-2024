//class_a.dart file

import 'root.dart';

class ClassA implements RootInterface {
  @override
  int year = 2023;

  @override
  void method1() {
    print("Hi there!");
  }

  @override
  String method2() {
    return "I'm here!";
  }
}
