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
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Text("30 min",
                      style: TextStyle(
                          fontSize: 20,
                          color: fontColor2,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Delivery",
                        style: TextStyle(
                            fontSize: 20,
                            color: mainColor,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Meet lover, you'll be happy! Be sure this pizza is awesome!",
                    style: TextStyle(fontSize: 18, color: fontColor2),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text("\$ 3.99",
                            style: TextStyle(
                                fontSize: 40,
                                color: mainColor,
                                fontWeight: FontWeight.bold)),
                        Spacer(),
                        SizedBox(
                            width: 200,
                            height: 50,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Add to chart",
                                  style: TextStyle(
                                      color: fontColor1, fontSize: 20),
                                ),
                                style: TextButton.styleFrom(
                                    backgroundColor: mainColor,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))))))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
