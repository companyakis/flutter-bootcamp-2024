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
  bool switchControl = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Switch", style: TextStyle(fontSize: 25))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Switch control: $switchControl",
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 25),
            Switch(
                value: switchControl,
                activeTrackColor: Colors.redAccent,
                activeColor: Colors.red,
                inactiveThumbColor: Colors.blueAccent,
                inactiveTrackColor: Colors.blueGrey,
                onChanged: (data) {
                  setState(() {
                    switchControl = data;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
