import 'package:flutter/material.dart';
import 'package:naviapp/screens/form_page.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Navigate to form page when logo tapped or after delay
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => FormPage()),
            );
          },
          child: Image.asset(
            'assets/logo.png', // Add your logo image in assets folder and mention it in pubspec.yaml
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}