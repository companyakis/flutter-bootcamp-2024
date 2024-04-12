import 'package:flutter/material.dart';
import 'package:pizza/app_colors.dart';

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
        title: Text("Pizza",
            style: TextStyle(
                color: fontColor1, fontFamily: "Pacifico", fontSize: 20)),
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Let's eat pizza", style: TextStyle(fontSize: 30))
        ],
      )),
    );
  }
}
