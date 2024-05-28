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
      backgroundColor: Colors.blueAccent,
      centerTitle: false,
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Future Banking",
              style: TextStyle(fontSize: 20, color: Colors.white)),
          Text("AI and Web3",
              style: TextStyle(fontSize: 15, color: Colors.white)),
        ],
      ),
      leading: IconButton(
        tooltip: "Services",
        icon: const Icon(Icons.dehaze_outlined),
        onPressed: () {},
        color: Colors.white,
      ),
      actions: [
        IconButton(
          tooltip: "Help",
          onPressed: () {},
          icon: const Icon(Icons.info, color: Colors.white),
        ),
        IconButton(
          tooltip: "Exit",
          onPressed: () {},
          icon: const Icon(Icons.exit_to_app, color: Colors.white),
        )
      ],
    ));
  }
}
