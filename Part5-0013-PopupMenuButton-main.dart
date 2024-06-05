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
        title: const Text("PopupMenuButton App",
            style: TextStyle(fontSize: 30, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Add",
                      style: TextStyle(fontSize: 20, color: Colors.blue)),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Update",
                      style: TextStyle(fontSize: 20, color: Colors.green)),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Delete",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                ),
              ],
              onCanceled: () {},
              onSelected: (value) {
                if (value == 1) {}
                if (value == 2) {}
                if (value == 3) {}
              },
              child: const Icon(
                Icons.select_all,
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
