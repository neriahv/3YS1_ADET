import 'dart:io';
import 'cherrymobile.dart'; // Inheritance
import 'SamsungFlip.dart'; // Abstraction

void main() { 
  // Inheritance
  var cherry = cherrymobile(); // the instance is assigned to 'cherry'
  cherry.displayScreen();
  cherry.vibrate();
  cherry.poweroff();

  // Abstraction
  var newphone = SamsungFlip();
  newphone.bluetoothon();
  newphone.bluetoothoff();
}