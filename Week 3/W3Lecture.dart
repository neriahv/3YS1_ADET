import 'dart:io'; //to use input and output string for dart

void main() {
  String? Again;
  String? Iam;
  int category = 0;
  while (Again != 'q') {
    stdout.write("\nEnter Your Name: "); // stdout: print/output
    String? name = stdin.readLineSync(); // stdin: input

    stdout.write(
      'Hello, $name! How old are you?: ',
    ); // to print a variable, use $
    String? age =
        stdin.readLineSync(); // String? means that the input will be string

    // tryParse() method parses the string and converts it into the given data type
    int numage =
        int.tryParse(age ?? '') ?? 0; //if failed input, it will return empty or 0

    print('You are $numage years old');

    // if-else statements
    if (numage == 0 || numage < 5) {
      Iam = 'baby';
      category = 1;
    } else if (numage == 3 || numage < 5) {
      Iam = 'toddler';
      category = 2;
    } else if (numage == 5 || numage < 7) {
      Iam = 'child';
      category = 3;
    } else if (numage == 7 || numage < 13) {
      Iam = 'kid';
      category = 4;
    } else if (numage == 13 || numage < 20) {
      Iam = 'teenager';
      category = 5;
    } else if (numage == 20 || numage < 60) {
      Iam = 'adult';
      category = 6;
    } else if (numage > 59) {
      Iam = 'senior citizen';
      category = 7;
    } else {
      print('You are unknown!');
    }

    switch (category){
      case 1:
        print('You are a $Iam');
        print('and you need to drink milk!');
        break;
      case 2:
        print('You are a $Iam');
        print('and you need to eat fruits!');
        break;
      case 3:
        print('You are a $Iam');
        print('and you need to eat rice!');
        break;
      case 4:
        print('You are a $Iam');
        print('and you need to eat veggies!');
        break;
      case 5:
        print('You are a $Iam');
        print('and you need to drink vitamins!');
        break;
      case 6:
        print('You are an $Iam');
        print('and you need to drink supplements!');
        break;
      case 7:
        print('You are a $Iam');
        print('and you need to drink medicines!');
        break;
    }

    stdout.write('Enter a character (q to quit): ');
    Again = stdin.readLineSync();

  }
}
