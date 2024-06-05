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
  //let's create our variables
  String aProverb = "";
  var controller = TextEditingController();

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
            Text("A proverb: $aProverb", style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Add a proverb",
                              style: TextStyle(color: Colors.white)),
                          backgroundColor: Colors.greenAccent,
                          content: SizedBox(
                            height: 75,
                            child: Column(
                              children: [
                                TextField(
                                  controller: controller,
                                  decoration: const InputDecoration(
                                      hintText: "A proverb"),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  String data = controller.text;
                                  aProverb = data;
                                  controller.text = "";
                                  Navigator.pop(context);
                                },
                                child: const Text("Ok",
                                    style: TextStyle(color: Colors.white))),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Cancel",
                                    style: TextStyle(color: Colors.white)))
                          ],
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent),
                child: const Text("Tell me a proverb",
                    style: TextStyle(fontSize: 25, color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
