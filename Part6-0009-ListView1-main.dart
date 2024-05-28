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
          title: const Text("ListView Usage",
              style: TextStyle(fontSize: 20, color: Colors.white)),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.looks_one),
              title: const Text("Item 1"),
              subtitle: const Text("Item 1 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.looks_two),
              title: const Text("Item 2"),
              subtitle: const Text("Item 2 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.looks_3),
              title: const Text("Item 3"),
              subtitle: const Text("Item 3 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.looks_4),
              title: const Text("Item 4"),
              subtitle: const Text("Item 4 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.looks_5),
              title: const Text("Item 5"),
              subtitle: const Text("Item 5 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.looks_6),
              title: const Text("Item 6"),
              subtitle: const Text("Item 6 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.celebration),
              title: const Text("Item 7"),
              subtitle: const Text("Item 7 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text("Item 8"),
              subtitle: const Text("Item 8 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.free_breakfast),
              title: const Text("Item 9"),
              subtitle: const Text("Item 9 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.diamond),
              title: const Text("Item 10"),
              subtitle: const Text("Item 10 area"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
          ],
        ));
  }
}
