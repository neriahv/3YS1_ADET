import 'dart:io';

void main() {
  print('Enter your Birthdate: ');
  print('Enter Day: ');
  String? day = stdin.readLineSync();
  int dday = int.tryParse(day ?? '') ?? 0;
  int newday = getDay(dday);
  print('Your new Day is: $newday');
  print('Enter Month: ');
  String? mo = stdin.readLineSync();
  int cmo = int.tryParse(mo ?? '') ?? 0;
  print('Enter Year: ');
  String? yr = stdin.readLineSync();
  int yyr = int.tryParse(yr ?? '') ?? 0;
}

int getDay(int dd) {
  print('Day is: $dd');
  dd = dd + 1;
  return dd;
}
