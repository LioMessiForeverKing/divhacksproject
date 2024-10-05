import 'package:flutter/material.dart';
import 'thirdscreen.dart'; // Import the ThirdScreen

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate back to the first screen
                Navigator.pop(context);
              },
              child: const Text('Go Back to First Screen'),
            ),
            const SizedBox(height: 20), // Add space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the third screen when button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
              child: const Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
