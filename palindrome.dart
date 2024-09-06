import 'dart:io';
void main() {
  print('Enter a string:');
  String s = stdin.readLineSync()!;
  var P = s == s.split('').reversed.join('');
  if (P) {
    print('it is a palindrome.');
  } else {
    print('The is not a palindrome.');
  }
}