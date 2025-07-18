abstract class avenger {
  String? avName;
  String? avPower;

  // get method for name and power
  String? get getName => avName;
  String? get getPower => avPower;

  // set method for name and power
  set setName (String name) {
    avName = name;
  }

  set setPower (String power) {
    avPower = power;
  }

  // abstract method for the child class
  void usePower();
}