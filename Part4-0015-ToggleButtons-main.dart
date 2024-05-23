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
  // toogle variables

  var toogles = [true, false, false, false];

  int selectedToogleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Toggle Buttons", style: TextStyle(fontSize: 25))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Last Selected toogle: ${selectedToogleIndex + 1}",
                style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 40),
            ToggleButtons(
              children: [
                Icon(Icons.looks_one),
                Icon(Icons.looks_two),
                Icon(Icons.looks_3),
                Icon(Icons.looks_4),
              ],
              isSelected: toogles,
              color: Colors.green,
              selectedColor: Colors.lightBlueAccent,
              fillColor: Colors.purpleAccent,
              onPressed: (int selectedIndex) {
                selectedToogleIndex = selectedIndex;
                setState(() {
                  toogles[selectedIndex] = !toogles[selectedIndex];
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
