//myworks.dart file

//main.dart is different

import 'package:design_steps/colors.dart';
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
        title: Text(
          "Pizza",
          style: TextStyle(
            color: fontColor1, //from colors.dart file
          ),
        ),
        backgroundColor: mainColor, //from colors.dart file
        centerTitle: true,
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
