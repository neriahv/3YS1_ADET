import 'dart:io';
import 'WindowsMobile.dart';

class SamsungFlip implements WindowsMobile {
  //Abstraction: this serves as the body
  @override
  void bluetoothon() => print('The bluetooth device is ready to pair');

  @override
  void bluetoothoff() => print('The bluetooth device is disconnected');
}
