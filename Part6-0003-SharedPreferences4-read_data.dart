import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReadData extends StatefulWidget {
  const ReadData({super.key});

  @override
  State<ReadData> createState() => _ReadDataState();
}

class _ReadDataState extends State<ReadData> {
  //Read data
  Future<void> readData() async {
    var sp = await SharedPreferences.getInstance();

    String name = sp.getString("name") ?? "No user name";
    int birthYear = sp.getInt("birthYear") ?? 0;
    double height = sp.getDouble("height") ?? 0.0;
    bool militaryStatus = sp.getBool("militaryStatus") ?? false;

    print("Name : $name");
    print("Birth Year : $birthYear");
    print("Height : $height");
    print("Military Status : $militaryStatus");
  }

  //Delete data
  Future<void> deleteData() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("militaryStatus");
  }

  //Update data
  Future<void> updateData() async {
    var sp = await SharedPreferences.getInstance();
    sp.setInt("birthYear", 2024);
  }

  //init state
  @override
  void initState() {
    super.initState();
    readData();
    //deleteData();
    //updateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Print Data Page")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
