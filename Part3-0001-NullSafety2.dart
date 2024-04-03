void main() {
  
  //null safety - nullable

  String sayHi = "Hi there!";

  //what happen if variable is null
  
  //!, use ! if you are sure your code is not null

  String? greeting = null;

  //print("Greeting: ${greeting!.toLowerCase()}"); //Unhandled exception

  greeting = "Hi There!";

  print("Greeting: ${greeting!.toLowerCase()}"); //Greeting: hi there!
}
