import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MustafaApp(),
    );
  }
}

class MustafaApp extends StatefulWidget {
  const MustafaApp({super.key});

  @override
  State<MustafaApp> createState() => _MustafaAppState();
}

class _MustafaAppState extends State<MustafaApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Custom Widgets",
              style: TextStyle(fontSize: 30, color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRectangularBlue(
                  rectangularWidth: 50, rectangularHeight: 90),
              const SizedBox(height: 30),
              CustomRectangularBlue(
                  rectangularHeight: 76, rectangularWidth: 92),
              const SizedBox(height: 30),
              CustomText(content: "Hi there", size: 30),
              const SizedBox(height: 30),
              CustomText(content: "Hello people!", size: 40)
            ],
          ),
        ));
  }
}

class CustomRectangularBlue extends StatelessWidget {
  double rectangularWidth;
  double rectangularHeight;

  CustomRectangularBlue(
      {required this.rectangularWidth, required this.rectangularHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: rectangularWidth, height: rectangularHeight, color: Colors.blue);
  }
}

class CustomText extends StatelessWidget {
  String content;
  double size;
  CustomText({required this.content, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(content, style: TextStyle(fontSize: size));
  }
}
