//main.dart file

import 'functions.dart';

void main() {
  var funcs = OurFunctions();

  String returnStringFunction = funcs.sayHi();

  print("Returning string result : $returnStringFunction"); //Returning string result : Hi there
     
  int returningYearResult = funcs.sayThisYear();

  print("This year is: $returningYearResult"); //This year is: 2023
}
