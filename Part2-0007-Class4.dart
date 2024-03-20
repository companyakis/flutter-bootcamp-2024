//main.dart file

import 'country.dart';

void main() {
  //let's create objects

  var marsia = Country(name: "Marsia", population: 2300000, isRepublic: true);

  marsia.countryInfo();

  print("--------------");

  marsia.zeroPopulation();

  marsia.countryInfo();

  print("--------------");

  marsia.increasePopulation(50000);

  marsia.countryInfo();

/*
Country name: Marsia
Country population: 2300000
Is country a republic: true
--------------
Country name: Marsia       
Country population: 0      
Is country a republic: true
--------------
Country name: Marsia       
Country population: 50000  
Is country a republic: true
*/
}
