void main() {
  
  //null safety - nullable

  String sayHi = "Hi there!";

  //what happen if variable is null
  
  //?
  
  String? greeting = null;

  print("Greeting: ${greeting?.toLowerCase()}"); //Greeting: null

  greeting = "Hi There!";

  print("Greeting: ${greeting?.toLowerCase()}"); //Greeting: hi there!
}
