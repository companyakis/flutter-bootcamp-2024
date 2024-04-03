void main() {
  
  //null safety - nullable

  //if else

  String? greeting = null;

  if (greeting != null) {
    print("Greeting: ${greeting.toLowerCase()}");
  } else {
    print("Your greeting is null...");
  }
  
}
