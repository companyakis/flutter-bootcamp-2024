import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class FileApp extends StatefulWidget {
  const FileApp({super.key});

  @override
  State<FileApp> createState() => _FileAppState();
}

class _FileAppState extends State<FileApp> {
  //let's add variables
  var controller = TextEditingController();

  //let's create our functions

  Future<void> addData() async {
    var fp = await getApplicationDocumentsDirectory();
    var filePath = fp.path;
    var file = File("$filePath/dosyam.txt");
    file.writeAsString(controller.text);
    controller.text = "";
  }

  Future<void> readData() async {
    try {
      var fp = await getApplicationDocumentsDirectory();
      var filePath = fp.path;
      var file = File("$filePath/dosyam.txt");
      String content = await file.readAsString();
      controller.text = content;
    } catch (e) {
      e.toString();
    }
  }

  Future<void> deleteData() async {
    var fp = await getApplicationDocumentsDirectory();
    var filePath = fp.path;
    var file = File("$filePath/dosyam.txt");

    if (file.existsSync()) {
      file.delete();
    }
    controller.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Append data to a file")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: "Add"),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  addData();
                },
                child: const Text("Add")),
            ElevatedButton(
                onPressed: () {
                  readData();
                },
                child: const Text("Read")),
            ElevatedButton(
                onPressed: () {
                  deleteData();
                },
                child: const Text("Delete")),
          ],
        ),
      ]),
    );
  }
}
