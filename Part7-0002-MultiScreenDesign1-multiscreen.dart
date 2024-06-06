import 'package:flutter/material.dart';

class MultiScreenApp extends StatelessWidget {
  const MultiScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MultiScreen App",
              style: TextStyle(fontSize: 30, color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 600) {
              return const PhoneDesign();
            } else {
              return const TabloidDesign();
            }
          },
        ));
  }
}

class TabloidDesign extends StatelessWidget {
  const TabloidDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Tabloid Design", style: TextStyle(fontSize: 35)),
        const SizedBox(height: 15),
        Image.asset("images/stevejobs@2x.png"),
        const SizedBox(height: 15),
        const Text("Steve Jobs", style: TextStyle(fontSize: 30)),
      ],
    ));
  }
}

class PhoneDesign extends StatelessWidget {
  const PhoneDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Phone Design", style: TextStyle(fontSize: 25)),
        const SizedBox(height: 15),
        Image.asset("images/stevejobs@1x.png"),
        const SizedBox(height: 15),
        const Text("Steve Jobs", style: TextStyle(fontSize: 20)),
      ],
    ));
  }
}
