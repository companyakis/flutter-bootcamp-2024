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
      home: const MustafaApp(),
    );
  }
}

class MustafaApp extends StatefulWidget {
  const MustafaApp({super.key});

  @override
  State<MustafaApp> createState() => _MustafaAppState();
}

class _MustafaAppState extends State<MustafaApp> {
  //let's create app variables
  bool blockchain = false;
  bool ai = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox",
            style: TextStyle(fontSize: 30, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
              title: const Text("Blockchain"),
              value: blockchain,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.greenAccent,
              activeColor: Colors.blueGrey,
              onChanged: (data) {
                setState(() {
                  blockchain = data!;
                });
              }),
          CheckboxListTile(
              title: const Text("AI"),
              value: ai,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.greenAccent,
              activeColor: Colors.blueGrey,
              onChanged: (data) {
                setState(() {
                  ai = data!;
                });
              }),
          const SizedBox(height: 25),
          Text("Blockchain condition: $blockchain"),
          const SizedBox(height: 25),
          Text("AI condition: $ai"),
          const SizedBox(height: 25),
        ],
      )),
    );
  }
}
