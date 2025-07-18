import 'avenger.dart';
// Inheriting from the avenger file
class Thor extends avenger {
  // setter method to assign their unique name & power
  Thor() {
    setName = 'THOR';
    setPower = 'Superhuman Strength';
  }

  // override to display their own message
  @override
  usePower() {
    print(" > $getName's power is $getPower");
  }
}
