import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate back to the second screen
                Navigator.pop(context);
              },
              child: const Text('Go Back to Second Screen'),
            ),
            const SizedBox(height: 20), // Add space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate back to the first screen
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Go Back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
