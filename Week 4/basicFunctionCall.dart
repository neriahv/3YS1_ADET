import 'dart:io';

void main() {
  callme(3);
}

void callme(var receivedval) {
  print('Please call me maybe? $receivedval times');
}