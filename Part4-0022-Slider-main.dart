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

  double sliderPoint = 50.0; // we can use diff values

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider",
            style: TextStyle(fontSize: 30, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Result (integer): ${sliderPoint.toInt()}",
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          Text("Result (double): $sliderPoint",
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          Slider(
            min: 0.0,
            max: 100.0,
            value: sliderPoint,
            activeColor: Colors.green,
            inactiveColor: Colors.greenAccent,
            onChanged: (double i) {
              setState(() {
                sliderPoint = i;
              });
            },
          )
        ],
      )),
    );
  }
}
