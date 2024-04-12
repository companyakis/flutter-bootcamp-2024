//list_oop.dart file

//oop => object oriented programming

import 'students.dart';

void main() {
  var bilge = Students(number: 300, name: "Bilge", studentClass: "8E");
  var attila = Students(number: 440, name: "Attila", studentClass: "9F");
  var kultigin = Students(number: 280, name: "Kültigin", studentClass: "7A");

  var studentsList = <Students>[];

  studentsList.addAll([bilge, attila, kultigin]);

  for (var student in studentsList) {
    print("${student.name}-${student.number}-${student.studentClass}");
  }
}

/*
Bilge-300-8E
Attila-440-9F
Kültigin-280-7A
*/
