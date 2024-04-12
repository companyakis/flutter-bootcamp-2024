//string filtering

//list_oop.dart file

//oop => object oriented programming

import 'students.dart';

void main() {
  var bilge = Students(number: 300, name: "Bilge", studentClass: "8E");
  var attila = Students(number: 440, name: "Attila", studentClass: "9F");
  var kultigin = Students(number: 280, name: "Kültigin", studentClass: "7A");

  var studentsList = <Students>[];

  studentsList.addAll([bilge, attila, kultigin]);

  //filtering 3 sample


  Iterable<Students> filtering1 = studentsList.where((element) {
    return element.name.contains("til");
  });

  var list1 = filtering1.toList();

  for (var s in list1) {
    print("${s.number}-${s.name}-${s.studentClass}");
  }

/*
440-Attila-9F
*/

}
