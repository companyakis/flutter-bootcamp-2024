//main.dart file

import 'functions.dart';

void main() {
  
  var funcs = OurFunctions();

  funcs.sayHi("Mustafa"); //Hi Mustafa!

  String welcomeMessage = funcs.sayWelcome("Bilge Kültigin");

  print("Welcome message is: $welcomeMessage!"); //Welcome message is: Welcome Bilge Kültigin!
      
  int totalAmount = funcs.sumNumbers(23, 478);

  print("Total amount is equal to $totalAmount..."); //Total amount is equal to 501...
      
  //we don't have to declare a variable to show the result
  
  print(funcs.sumNumbers(45, 232)); //277
}
