import 'dart:io';

void main() {
  int no = 3;
  int newCallTimes = callme(no);
  print('Please call me maybe? $newCallTimes times');
}

int callme(var receivedval) {
  receivedval = receivedval + 2;
  return receivedval;
}
