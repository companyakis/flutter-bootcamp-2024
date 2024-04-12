//list_oop.dart file

//oop => object oriented programming

import 'students.dart';

void main() {
  var bilge = Students(number: 300, name: "Bilge", studentClass: "8E");
  var attila = Students(number: 440, name: "Attila", studentClass: "9F");
  var kultigin = Students(number: 280, name: "Kültigin", studentClass: "7A");

  var studentsList = <Students>[];

  studentsList.addAll([bilge, attila, kultigin]);

  //filtering 2 sample

  //we can use &&, ||...

  Iterable<Students> filtering1 = studentsList.where((element) {
    return element.number < 300 && element.number > 200;
  });

  var list1 = filtering1.toList();

  for (var s in list1) {
    print("${s.number}-${s.name}-${s.studentClass}");
  }

/*
280-Kültigin-7A
*/

}
