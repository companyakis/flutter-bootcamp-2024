import 'package:flutter/material.dart';
import 'package:widget_app/page_one.dart';
import 'package:widget_app/page_two.dart';
import 'package:widget_app/page_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // variables

  var pageList = const [PageOne(), PageTwo(), PageThree()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Banking",
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 238, 220, 220),
                fontWeight: FontWeight.bold)),
        backgroundColor: const Color.fromARGB(255, 43, 140, 93),
        centerTitle: true,
      ),
      body: pageList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: "DeFi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: "AI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: "AR",
          )
        ],
        backgroundColor: const Color.fromARGB(255, 43, 140, 93),
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (i) {
          setState(() {
            selectedIndex = i;
          });
        },
      ),
    );
  }
}
