//composition_usage.dart file

import 'categories.dart';
import 'directors.dart';
import 'films.dart';

void main() {
  var c1 = Categories(category_id: 1, category_name: "comedy");
  var c2 = Categories(category_id: 2, category_name: "love");

  var d1 = Directors(director_id: 1, director_name: "Ertem Eğilmez");
  var d2 = Directors(director_id: 2, director_name: "Kartal Tibet");

  var f1 = Films(
      film_id: 1,
      film_name: "Hababam Sınıfı",
      film_year: 1975,
      category: c1,
      director: d1);

  print("Film id: ${f1.film_id}");
  print("Film name: ${f1.film_name}");
  print("Film year: ${f1.film_year}");
  print("Film category: ${f1.category.category_name}");
  print("Director name: ${f1.director.director_name}");

  /*
Film id: 1
Film name: Hababam Sınıfı   
Film year: 1975
Film category: comedy       
Director name: Ertem Eğilmez
  */
}
