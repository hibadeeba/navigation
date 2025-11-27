import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Home page ',
        style: TextStyle(
          fontSize: 26,
          color: Color.fromARGB(255, 145, 112, 112),
        ),
      ),
    );
  }
}
