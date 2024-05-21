import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/counter_model.dart';
import 'package:provider_counter/second_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Main Page", style: TextStyle(fontSize: 25))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterModel>(
              builder: (context, counterModelObject, child) {
                return Text("${counterModelObject.returnCounter()}",
                    style: const TextStyle(fontSize: 40));
              },
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: const Text("Second Page"))
          ],
        ),
      ),
    );
  }
}
