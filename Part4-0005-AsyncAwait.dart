Future<void> main() async {
  print("Waiting for the data...");
  var data = await dataNew();
  print("Greeting: $data");
}

Future<String> dataNew() async {
  for (int i = 1; i < 6; i++) {
    Future.delayed(Duration(seconds: i), () => print("Data Percentage : ${i * 20}"));
  } 
  return Future.delayed(Duration(seconds: 5), () => "Hi there!");
}

/*
Waiting for the data...
Data Percentage : 20
Data Percentage : 40
Data Percentage : 60
Data Percentage : 80
Data Percentage : 100
Greeting: Hi there!
*/
