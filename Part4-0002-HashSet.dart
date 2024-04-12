import 'dart:collection';

void main() {
  //unique values!
  var numbers = HashSet.from([100, 100, 220, 430]);
  print(numbers); //{220, 100, 430}

  var names = HashSet<String>();
  names.addAll({
    "M",
    "VM",
    "AO",
    "MA",
  });

  names.add("MA");

  print(names); //we'll see unique values

  print(names.elementAt(1)); //M

  for (var n in names) {
    print("Name: ${n}");
  }

  //remove
  names.remove("M");
  print(names);

  //clear
  names.clear();
  print(names); //{}
}
