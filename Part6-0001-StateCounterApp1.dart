//counter.dart file

import 'package:flutter/material.dart';
import 'package:pizza/app_colors.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  counterUp() {
    setState(() {
      counter++;
    });
  }

  counterDown() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State and Counter App",
            style: TextStyle(color: fontColor1, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: counterUp,
                child: Text("Counter ++",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
            ),
            Text("Counter value: $counter",
                style: const TextStyle(fontSize: 30)),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: counterDown,
                child: Text("Counter --",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
