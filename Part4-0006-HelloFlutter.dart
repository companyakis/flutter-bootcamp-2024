//myworks.dart file
//main.dart file is below

import 'package:flutter/material.dart';

class MyWorks extends StatefulWidget {
  const MyWorks({super.key});

  @override
  State<MyWorks> createState() => _MyWorksState();
}

class _MyWorksState extends State<MyWorks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza"),
      ),
      body: const Center(
        //horizontal centering
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //vertical centering
          children: [
            Text(
              "Hi there!",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

//------------------------------------------------------------------------------------------------

//main.dart file

import 'package:design_steps/myworks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWorks(),
    );
  }
}

