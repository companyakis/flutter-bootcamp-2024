//list_oop.dart file

//oop => object oriented programming

import 'students.dart';

void main() {
  var bilge = Students(number: 300, name: "Bilge", studentClass: "8E");
  var attila = Students(number: 440, name: "Attila", studentClass: "9F");
  var kultigin = Students(number: 280, name: "Kültigin", studentClass: "7A");

  var studentsList = <Students>[];

  studentsList.addAll([bilge, attila, kultigin]);

  //number sorting variable (a > b)
  //we can sort alphabetically if we want...
  
  Comparator<Students> sortingNumber = (x, y) => y.number.compareTo(x.number);
  studentsList.sort(sortingNumber);

  for (var s in studentsList) {
    print("${s.number}-${s.name}-${s.studentClass}");
  }
}

/*
440-Attila-9F  
300-Bilge-8E   
280-Kültigin-7A
*/
