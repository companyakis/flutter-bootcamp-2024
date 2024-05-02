//our_app.dart file
//main.dart is different!

import 'package:flutter/material.dart';
import 'package:spapp/game_screen.dart';

class OurApp extends StatefulWidget {
  const OurApp({super.key});

  @override
  State<OurApp> createState() => _OurAppState();
}

class _OurAppState extends State<OurApp> {
  //let's add requrired variables
  var controller = TextEditingController();
  String userEMail = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Field")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("User e-mail: $userEMail"),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(hintText: "Type user e-mail"),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  userEMail = controller.text;
                });
                controller.text = "";
              },
              child: const Text("Ok"),
            )
          ],
        ),
      ),
    );
  }
}
