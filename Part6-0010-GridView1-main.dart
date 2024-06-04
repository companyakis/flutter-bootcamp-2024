import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2 / 1,
        children: [
          GestureDetector(
              child: const Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.money),
                    Text("Buy Bitcoin"),
                  ],
                ),
              ),
              onTap: () {}),
          GestureDetector(
              child: const Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.money),
                    Text("Buy Bitcoin"),
                  ],
                ),
              ),
              onTap: () {}),
          GestureDetector(
              child: const Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.money),
                    Text("Buy Bitcoin"),
                  ],
                ),
              ),
              onTap: () {}),
          GestureDetector(
              child: const Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.money),
                    Text("Buy Bitcoin"),
                  ],
                ),
              ),
              onTap: () {}),
        ],
      ),
    );
  }
}
