//our_app.dart file
//main.dart is different!

import 'package:flutter/material.dart';
import 'package:spapp/game_screen.dart';

class OurApp extends StatefulWidget {
  const OurApp({super.key});

  @override
  State<OurApp> createState() => _OurAppState();
}

class _OurAppState extends State<OurApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is main page!"),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GameScreen()));
                },
                child: const Text("Game Screen"))
          ],
        ),
      ),
    );
  }
}
