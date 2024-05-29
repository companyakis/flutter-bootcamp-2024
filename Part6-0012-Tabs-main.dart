import 'package:flutter/material.dart';
import 'package:widget_app/page_one.dart';
import 'package:widget_app/page_three.dart';
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Future Banking",
              style: TextStyle(fontSize: 25, color: Colors.white)),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: "DeFi", icon: Icon(Icons.monetization_on)),
              Tab(text: "AI", icon: Icon(Icons.computer_rounded)),
              Tab(text: "AR", icon: Icon(Icons.e_mobiledata)),
            ],
            indicatorColor: Colors.white,
            labelColor: Colors.white,
          ),
        ),
        body: const TabBarView(children: [PageOne(), PageTwo(), PageThree()]),
      ),
    );
  }
}
