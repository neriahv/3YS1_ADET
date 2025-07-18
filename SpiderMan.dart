import 'avenger.dart';
// Inheriting from the avenger file
class SpiderMan extends avenger {
  // setter method to assign their unique name & power
  SpiderMan() {
    setName = 'SPIDER MAN';
    setPower = 'Spider-Sense';
  }

  // override to display their own message
  @override
  usePower() {
    print(" > $getName's power is $getPower");
  }
}
