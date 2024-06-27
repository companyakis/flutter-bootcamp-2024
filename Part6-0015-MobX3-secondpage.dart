import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/counter.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var counterModelObject = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page",
            style: TextStyle(fontSize: 30, color: Colors.white)),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                counterModelObject.increment();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent),
              child: const Text("Counter ++",
                  style: TextStyle(fontSize: 25, color: Colors.white))),
          const SizedBox(height: 30),
          Observer(builder: (_) {
            return Text("${counterModelObject.value}",
                style: const TextStyle(fontSize: 30));
          }),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                counterModelObject.decrement();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent),
              child: const Text("Counter --",
                  style: TextStyle(fontSize: 25, color: Colors.white))),
        ],
      )),
    );
  }
}
