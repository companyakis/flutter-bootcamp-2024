void main() {
  var greenCountries = ["canada", "new zeland", "norway"];

  var importantYears = <int>[];

  //add data
  importantYears.add(1990);
  importantYears.add(2014);
  importantYears.add(2017);

  //read data
  print(importantYears);
  print(importantYears[1]);

  //update data
  importantYears[0] = 1991;
  print(importantYears);

  //insert data
  importantYears.insert(1, 2012);
  print(importantYears); //[1991, 2012, 2014, 2017]

  //length
  print(importantYears.length); //4

  for (var year in importantYears) {
    print(year);
  }

  //reversed
  var reversedList = importantYears.reversed.toList();
  print(reversedList);

  //remove data
  importantYears.removeAt(1);
  print(importantYears);

  //clear data
  importantYears.clear();
  print(importantYears);
}
