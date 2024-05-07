import 'package:flutter/material.dart';

class Pictures extends StatefulWidget {
  const Pictures({super.key});

  @override
  State<Pictures> createState() => _PicturesState();
}

class _PicturesState extends State<Pictures> {
  //let's add image variable
  String pictureName = "happy.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Pictures")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    pictureName = "happy.png";
                  });
                },
                child: const Text("Happy")),
            const SizedBox(height: 20),
            Image.asset("pictures/$pictureName"),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    pictureName = "sad.png";
                  });
                },
                child: const Text("Sad"))
          ],
        ),
      ),
    );
  }
}
