import 'package:flutter/material.dart';
import 'package:widget_app/page_one.dart';
import 'package:widget_app/page_two.dart';

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
  // drawer variables

  var pageList = [PageOne(), PageTwo()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Banking",
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 10, 54, 33),
        centerTitle: true,
      ),
      body: pageList[selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 10, 54, 33)),
              child: Text("Open Banking",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
            ListTile(
              title: const Text("DeFi and Web3"),
              leading: const Icon(Icons.looks_one),
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: const Text("AI"),
              leading: const Icon(Icons.looks_two),
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                  Navigator.pop(context);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
