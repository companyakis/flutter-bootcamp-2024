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

  var subjectsList = <String>[];

  String selectedSubject = "AI";

  @override
  void initState() {
    super.initState();
    subjectsList.addAll(["AI", "Web3", "Algo Trade", "AR"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DropDown App",
              style: TextStyle(fontSize: 30, color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: selectedSubject,
                items:
                    subjectsList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text("Subject : $value",
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                        )),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down),
                onChanged: (String? selectedData) {
                  setState(() {
                    selectedSubject = selectedData!;
                  });
                },
              ),
              const SizedBox(height: 40),
              Text("Selected subject: $selectedSubject",
                  style: const TextStyle(fontSize: 30))
            ],
          ),
        ));
  }
}
