import 'avenger.dart';
// Inheriting from the avenger file
class BlackWidow extends avenger{
  // setter method to assign their unique name & power
  BlackWidow() {
    setName = 'BLACK WIDOW';
    setPower = 'Psychological Manipulation';
  }

  // override to display their own message
  @override
  usePower() {
    print(" > $getName's power is $getPower");
  }
}