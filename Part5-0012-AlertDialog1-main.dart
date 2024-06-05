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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert App",
            style: TextStyle(fontSize: 30, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Warning"),
                          content: const Text("Please, consider the warning!"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Ok")),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Cancel"))
                          ],
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent),
                child: const Text("Show Alert",
                    style: TextStyle(fontSize: 25, color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
