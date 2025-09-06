import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String email;
  final int age;

  SummaryPage({required this.name, required this.email, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Summary')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Email: $email', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Age: $age', style: TextStyle(fontSize: 18)),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  // Handle submission here
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Submitted'),
                      content: Text('Your data has been submitted!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.popUntil(
                                context, (route) => route.isFirst);
                          },
                          child: Text('OK'),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
