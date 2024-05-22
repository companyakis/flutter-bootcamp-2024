import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const TimerApp(),
    );
  }
}

class TimerApp extends StatefulWidget {
  const TimerApp({super.key});

  @override
  State<TimerApp> createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  //let's add app variables
  late Timer appTimer;

  int remaingTimeSeconds = 10;

  int remaingTimeMilliSeconds = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Timer App", style: TextStyle(fontSize: 30))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Remaining time (s): $remaingTimeSeconds",
                style: const TextStyle(fontSize: 25)),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  appTimer = Timer.periodic(Duration(seconds: 1), (timer) {
                    setState(() {
                      if (remaingTimeSeconds < 1) {
                        remaingTimeSeconds = 10;
                        appTimer.cancel();
                      } else {
                        remaingTimeSeconds -= 1;
                      }
                    });
                  });
                },
                child: const Text("Timer 1 (s)")),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  appTimer = Timer.periodic(Duration(milliseconds: 1), (timer) {
                    setState(() {
                      if (remaingTimeMilliSeconds < 1) {
                        remaingTimeMilliSeconds = 10000;
                        appTimer.cancel();
                      } else {
                        remaingTimeMilliSeconds -= 1;
                      }
                    });
                  });
                },
                child: const Text(
                  "Timer 2 (ms)",
                )),
            const SizedBox(height: 50),
            Text("Remaining time (ms): $remaingTimeMilliSeconds",
                style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
