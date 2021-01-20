/**
 * Exercise 6
 * Ask the user for a string and print out whether this string is a palindrome or not.
 * A palindrome is a string that reads the same forwards and backwards.
 */
import 'dart:io';

main(List<String> args) {
  //jumie();
  juke();
}

// void jumie() {
//   print("Enter your word here:");
//   String name = stdin.readLineSync();
// }

void juke(){
  stdout.write("Please give a word: ");
  String input = stdin.readLineSync().toLowerCase();
  String revInput = input.split('').reversed.join('');
  // Ternary operator
  input == revInput
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
}
