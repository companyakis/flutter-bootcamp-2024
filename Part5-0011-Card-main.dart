import 'package:flutter/material.dart';

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
      home: const CardApp(),
    );
  }
}

class CardApp extends StatefulWidget {
  const CardApp({super.key});

  @override
  State<CardApp> createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card App",
            style: TextStyle(fontSize: 30, color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 108, 140, 194),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 250,
              height: 200,
              child: Card(
                color: Color.fromARGB(255, 92, 119, 133),
                elevation: 15.0,
                shadowColor: Colors.lightGreen,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    side: BorderSide(width: 1, color: Colors.purple)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Hi There!",
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black12),
                        child: const Text("Don't Click",
                            style: TextStyle(color: Colors.white)),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Summary",
                              style: TextStyle(color: Colors.white)),
                          Icon(Icons.mobile_friendly_sharp, color: Colors.white)
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
