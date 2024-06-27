import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/counter.dart';
import 'package:mobx_app/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var counterModelObject = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page",
            style: TextStyle(fontSize: 30, color: Colors.white)),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(builder: (_) {
            return Text("${counterModelObject.value}",
                style: const TextStyle(fontSize: 30));
          }),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent),
              child: const Text("Second Page",
                  style: TextStyle(fontSize: 25, color: Colors.white)))
        ],
      )),
    );
  }
}
