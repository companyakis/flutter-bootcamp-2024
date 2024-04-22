//myworks.dart file

//main.dart is different

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
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Beef Cheese",
                style: TextStyle(
                    fontSize: 30,
                    color: mainColor,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Image.asset("pictures/pizza.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Cheese", style: TextStyle(color: fontColor1)),
                    style: TextButton.styleFrom(backgroundColor: mainColor),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Sausage", style: TextStyle(color: fontColor1)),
                    style: TextButton.styleFrom(backgroundColor: mainColor),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Olive", style: TextStyle(color: fontColor1)),
                    style: TextButton.styleFrom(backgroundColor: mainColor),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Pepper", style: TextStyle(color: fontColor1)),
                    style: TextButton.styleFrom(backgroundColor: mainColor),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
