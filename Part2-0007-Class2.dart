//main.dart file

import 'country.dart';

void main() {
  
  //let's create objects

  var marsia = Country(name: "Marsia", population: 2300000, isRepublic: true);

  marsia.population = 4500000;

  print("Name: ${marsia.name}");

  var andromedia = Country(name: "Andromedia", population: 35000, isRepublic: false);
      
  andromedia.isRepublic = true;

}
