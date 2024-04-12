import 'dart:collection';

void main() {
  var employee = {1: "Mustafa", 2: "Who are you"};

  var workers = HashMap<int, String>();

  workers[1] = "Teoman";
  workers[2] = "Mete";
  workers[3] = "Kutluk";

  print(workers); //{1: Teoman, 2: Mete, 3: Kutluk}

  //updating
  employee[2] = "Ataman";

  //data reading, use !, null control
  String person = workers[2]!;
  print(person); //Mete

  print(workers.length);

  print(workers.isNotEmpty);

  //keys
  for (var w in workers.keys) {
    print("Worker $w -> ${workers[w]}");
  }

  //delete
  workers.remove(1);
  print(workers); //{2: Mete, 3: Kutluk}

  //clear
  workers.clear();
}
