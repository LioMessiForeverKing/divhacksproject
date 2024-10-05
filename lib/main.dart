import 'package:flutter/material.dart';
import 'firstscreen.dart'; // Import the FirstScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const FirstScreen(), // Now, this points to the separated FirstScreen
    );
  }
}
