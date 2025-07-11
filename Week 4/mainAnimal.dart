import 'animal.dart';
import 'dog.dart';
import 'cat.dart';
import 'chicken.dart';
import 'frog.dart';

void main() {
  animal pet; //Polymorphism

  pet = dog();
  pet.sound();

  pet = cat();
  pet.sound();

  pet = chicken();
  pet.sound();

  pet = frog();
  pet.sound();
}