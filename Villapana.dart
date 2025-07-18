import 'dart:io';
import 'avenger.dart';
import 'Thor.dart';
import 'SpiderMan.dart';
import 'ScarletWitch.dart';
import 'BlackWidow.dart';

void main() {
  avenger name;

  // List of Avengers
  List<avenger> avengerList = [
    BlackWidow(),
    ScarletWitch(),
    SpiderMan(),
    Thor(),
  ];

  print("** THE AVENGER'S SUPERPOWERS ** ");
  // Looping the Avenger List
  for (int i = 0; i < avengerList.length; i++) {
    name = avengerList[i];
    name.usePower();
  }

  String? ans;
  // Asking the user if they want to update
  stdout.write("\nDo you want to update Avenger's power? [yes or no]: ");
  ans = (stdin.readLineSync() ?? '');
  ;

  if (ans.toLowerCase() == 'yes') {
    // if the answer is yes
    stdout.write('Enter the hero that you want to update: ');
    String? heroName = (stdin.readLineSync() ?? '');

    // For loop to access the list
    for (int i = 0; i < avengerList.length; i++) {
      // If statement to check if the name is on the list
      if (avengerList[i].getName == heroName.toUpperCase()) {
        stdout.write('Enter the new power: ');
        String? newPower = stdin.readLineSync();
        avengerList[i].setPower = newPower!; // Update the hero's power
        print("$heroName's power is now: ${avengerList[i].getPower}");

        print("\nUpdated Avenger's Superpowers:");
        // Updated list
        for (int i = 0; i < avengerList.length; i++) {
          name = avengerList[i];
          name.usePower();
        }
      }
    }
  } else {
    // if the answer is no or invalid
    print('Thank you for using the system!');
  }
}