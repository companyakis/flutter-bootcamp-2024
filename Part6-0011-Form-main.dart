import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // let's create the variables

  var formKey = GlobalKey<FormState>();
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 82, 134, 160),
        centerTitle: true,
        title: const Text("Form Usage", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: userNameController,
                    decoration: const InputDecoration(hintText: "User Name"),
                    validator: (formInput) {
                      if (formInput!.isEmpty) {
                        return "Type User Name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 40),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration:
                        const InputDecoration(hintText: "User Password"),
                    validator: (formInput) {
                      if (formInput!.isEmpty) {
                        return "Type User Password";
                      }
                      if (formInput.length < 8) {
                        return "User password must consist of at least 8 characters";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                bool result = formKey.currentState!.validate();

                if (result) {
                  passwordController.text = "";
                  userNameController.text = "";
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 82, 134, 160),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text("Sign-in")),
        ],
      )),
    );
  }
}
