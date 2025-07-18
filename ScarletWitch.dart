import 'avenger.dart';
// Inheriting from the avenger file
class ScarletWitch extends avenger {
  // setter method to assign their unique name & power
  ScarletWitch() {
    setName = 'SCARLET WITCH';
    setPower = 'Telekinesis and Energy Manipulation';
  }

  // override to display their own message
  @override
  usePower() {
    print(" > $getName's power is $getPower");
  }
}