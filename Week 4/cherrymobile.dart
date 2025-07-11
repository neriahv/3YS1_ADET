import 'dart:io';
import 'MobilePhone.dart';

class cherrymobile extends MobilePhone { //Inheritence: Inheriting the parent (MobilePhone)
  String name = 'Cherry Mobile';

  void displayScreen() {
    print('Welcome to $name');
  }
}