import 'animal.dart';
import 'cat.dart';
import 'dog.dart';
import 'mammal.dart';

void main() {
  var animal = Animal();
  var mammal = Mammal();
  var dog = Dog();
  var cat = Cat();

  animal.greeting(); //I don't know who I am:( =>no inheritance, its method
  mammal.greeting(); //I don't know who I am:( => inheritance, super-class's method
  dog.greeting(); //I'm a dog! Hi there! => inheritance but overriding
  cat.greeting(); //I'm a cat! Hi there! => inheritance but overriding
}
