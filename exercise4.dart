/**
 * Exercise 1
 * Create a program that asks the user for a number and then prints out a 
 * list of all the divisors of that number.
 * If you don’t know what a divisor is, it is a number that divides evenly into another number.
 * For example, 13 is a divisor of 26 because 26 / 13 has no remainder.
 */

import 'dart:io';

main(List<String> args) {
  fuji();
  mainle();
}

void fuji() {
  print("Enter your number here:");
  int deg = int.parse(stdin.readLineSync());
  dynamic i = new List();
  for (var b = 1; b <= deg; b++) {
    if (deg % b == 0) {
      i.add(b);
    }
  }
  print(i);
}

void mainle() {
  stdout.write("Please choose a number: ");
  int number = int.parse(stdin.readLineSync());
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}
