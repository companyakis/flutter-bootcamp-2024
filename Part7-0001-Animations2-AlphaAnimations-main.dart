import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const AnimationApp(),
    );
  }
}

class AnimationApp extends StatefulWidget {
  const AnimationApp({super.key});

  @override
  State<AnimationApp> createState() => _AnimationAppState();
}

// let's add with TickerProviderStateMixin

class _AnimationAppState extends State<AnimationApp>
    with TickerProviderStateMixin {
  // let's add variable and methods

  late AnimationController animCont;

  late Animation<double> alphaAnimValues;

  @override
  void initState() {
    super.initState();
    animCont =
        AnimationController(duration: Duration(milliseconds: 4000), vsync: this);

    alphaAnimValues = Tween(begin: 1.0, end: 0.0).animate(animCont)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    animCont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Opacity(
                opacity: alphaAnimValues.value,
                child: Icon(Icons.cloud, size: 100, color: Colors.white)),
            const Text("Weather App",
                style: TextStyle(color: Colors.white, fontSize: 30)),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  animCont.forward();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                child: const Text("Start",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
