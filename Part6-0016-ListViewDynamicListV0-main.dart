import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ListViewApp(),
    );
  }
}

class ListViewApp extends StatefulWidget {
  const ListViewApp({super.key});

  @override
  State<ListViewApp> createState() => _ListViewAppState();
}

class _ListViewAppState extends State<ListViewApp> {
  var cities = [
    "İzmir",
    "İstanbul",
    "Ankara",
    "Adana",
    "Bursa",
    "Mersin",
    "Kahramanmaraş",
    "Kayseri",
    "Gaziantep",
    "Elazığ"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView App V 0",
              style: TextStyle(fontSize: 30, color: Colors.white)),
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (context, i) {
            return Card(
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        cities[i],
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
