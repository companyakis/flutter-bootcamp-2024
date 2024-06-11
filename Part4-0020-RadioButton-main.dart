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
  int radioValue = 0;
  var selected = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button",
            style: TextStyle(fontSize: 30, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 200,
                child: RadioListTile(
                  value: 1,
                  groupValue: radioValue,
                  onChanged: (data) {
                    setState(() {
                      radioValue = data!;
                      selected = "Blockchain";
                    });
                  },
                  title: const Text("Blockchain"),
                ),
              ),
              SizedBox(
                width: 200,
                child: RadioListTile(
                  value: 2,
                  groupValue: radioValue,
                  onChanged: (data) {
                    setState(() {
                      radioValue = data!;
                      selected = "AI";
                    });
                  },
                  title: const Text("AI"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text("Selected area: $selected",
              style: const TextStyle(fontSize: 20)),
        ],
      )),
    );
  }
}
