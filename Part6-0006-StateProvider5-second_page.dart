import 'package:flutter/material.dart';
import 'package:provider_counter/counter_model.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Second Page", style: TextStyle(fontSize: 25))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterModel>(
                builder: (context, counterModelObject, child) {
              return ElevatedButton(
                  onPressed: () {
                    counterModelObject.counterUp();
                  },
                  child: const Text("2 * counter + 1"));
            }),
            const SizedBox(height: 30),
            Consumer<CounterModel>(
              builder: (context, counterModelObject, child) {
                return Text("${counterModelObject.returnCounter()}",
                    style: const TextStyle(fontSize: 40));
              },
            ),
            const SizedBox(height: 30),
            Consumer<CounterModel>(
                builder: (context, counterModelObject, child) {
              return ElevatedButton(
                  onPressed: () {
                    counterModelObject.counterDown();
                  },
                  child: const Text("3 * counter - 1"));
            }),
          ],
        ),
      ),
    );
  }
}
