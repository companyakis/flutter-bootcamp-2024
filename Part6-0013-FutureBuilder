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
  // let's create our func and var

  Future<int> calculateFactorial(int n) async {
    int result = 1;

    for (int i = 1; i <= n; i++) {
      result *= i;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Future Builder", style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<int>(
                future: calculateFactorial(12),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {}

                  if (snapshot.hasData) {
                    return Text("Factorial is equal to ${snapshot.data}",
                        style: const TextStyle(fontSize: 20));
                  } else {
                    return const Text("Unknown error. Please, try again!");
                  }
                },
              )
            ],
          ),
        ));
  }
}
