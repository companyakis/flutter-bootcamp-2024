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

  var screenText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gesture Detector App",
              style: TextStyle(fontSize: 30, color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      screenText = "One time click";
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      screenText = "Double click";
                    });
                  },
                  onLongPress: () {
                    setState(() {
                      screenText = "Long press!";
                    });
                  },
                  child:
                      const Text("Click me!", style: TextStyle(fontSize: 30))),
              const SizedBox(height: 20),
              Text(screenText)
            ],
          ),
        ));
  }
}
