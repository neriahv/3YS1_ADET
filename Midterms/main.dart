import 'package:flutter/material.dart';

void main() {
  runApp(const TemperatureApp());
}

class TemperatureApp extends StatelessWidget {
  const TemperatureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature Converter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TemperatureHome(), //calls Temperature Home
    );
  }
}

class TemperatureHome extends StatefulWidget {
  const TemperatureHome({super.key});

  @override
  // Creating State class extends the Generic State
  State<TemperatureHome> createState() => _TemperatureHomeState();
}

// Creating State class extends the Generic State
class _TemperatureHomeState extends State<TemperatureHome> {
  final TextEditingController _controller = TextEditingController();
  double? fahrenheit;
  double? kelvin;

  void _convertTemperature() {
    setState(() { // any data changes will call setState() method
      double celsius = double.tryParse(_controller.text) ?? 0;
      fahrenheit = (celsius * 9 / 5) + 32;
      kelvin = celsius + 273.15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Temperature Converter")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter temperature in Celsius",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertTemperature,
              child: const Text("Convert"),
            ),
            const SizedBox(height: 20),
            if (fahrenheit != null && kelvin != null) ...[
              Text("Fahrenheit: ${fahrenheit!.toStringAsFixed(2)} °F",
                  style: const TextStyle(fontSize: 18)),
              Text("Kelvin: ${kelvin!.toStringAsFixed(2)} K",
                  style: const TextStyle(fontSize: 18)),
            ],
          ],
        ),
      ),
    );
  }
}
