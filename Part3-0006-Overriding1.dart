//animal.dart file

class Animal {
  void greeting() {
    print("I don't know who I am:(");
  }
}

//-------------------------------------------------------------------------------

//mammal.dart file

import 'animal.dart';

class Mammal extends Animal {

}

//-------------------------------------------------------------------------------

//cat.dart file

import 'mammal.dart';

class Cat extends Mammal {
  @override
  void greeting() {
    print("I'm a cat! Hi there!");
  }
}

//-------------------------------------------------------------------------------

//dog.dart file

import 'mammal.dart';

class Dog extends Mammal {
  @override
  void greeting() {
    print("I'm a dog! Hi there!");
  }
}
