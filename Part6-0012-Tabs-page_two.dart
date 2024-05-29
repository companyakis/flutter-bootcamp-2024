import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("AI Services", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
