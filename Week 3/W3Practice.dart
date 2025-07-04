import 'dart:io';

void main() {
  stdout.write("Enter Your Name: ");
  String? name = stdin.readLineSync();

  stdout.write('Input 1st Number: ');
  String? num1 = stdin.readLineSync();
  stdout.write('Input 2nd Number: ');
  String? num2 = stdin.readLineSync();

  int numOne = int.tryParse(num1 ?? '') ?? 0;
  int numTwo = int.tryParse(num2 ?? '') ?? 0;

  print('\nHello, $name! Here are the results: ');

  print('Addition: ${numOne + numTwo}');
  print('Subtraction: ${numOne - numTwo}');
  print('Multiplication: ${numOne * numTwo}');
  print('Division: ${numOne / numTwo}');
}
