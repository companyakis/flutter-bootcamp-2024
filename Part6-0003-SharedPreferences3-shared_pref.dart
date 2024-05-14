import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spapp/read_data.dart';

class SP extends StatefulWidget {
  const SP({super.key});

  @override
  State<SP> createState() => _SPState();
}

class _SPState extends State<SP> {
  //add shared preferences and data

  Future<void> addData() async {
    var sp = await SharedPreferences.getInstance();

    sp.setString("name", "Mustafa");
    sp.setInt("birthYear", 1900);
    sp.setDouble("height", 2.25);
    sp.setBool("militaryStatus", true);

    var langList = <String>[];
    langList.addAll(["Python", "Rust", "Motoko", "JS", "Dart", "Solidity"]);

    sp.setStringList("langs", langList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preferences App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Click to See the Data"),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  addData();

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReadData()));
                },
                child: const Text("See the Data")),
          ],
        ),
      ),
    );
  }
}
