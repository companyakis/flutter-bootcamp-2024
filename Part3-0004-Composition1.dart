//categories.dart file

class Categories {
  int category_id;
  String category_name;

  Categories({required this.category_id, required this.category_name});
}

//----------------------------------------------------------------------------------

//directors.dart file

class Directors {
  int director_id;
  String director_name;

  Directors({required this.director_id, required this.director_name});
}

//----------------------------------------------------------------------------------

//films.dart file

import 'categories.dart';
import 'directors.dart';

class Films {
  int film_id;
  String film_name;
  int film_year;

  Categories category;
  Directors director;

  Films(
      {required this.film_id,
      required this.film_name,
      required this.film_year,
      required this.category,
      required this.director});
}
