/**
 * Exercise 10
 * Ask the user for a number and determine whether the number is prime or not.
 * Do it using a function
 */
import 'dart:io';

main(List<String> args) {
  // prime();
  mainbu();
}

// void prime() {
//   print("Enter your number here:");
//   int j = int.parse(stdin.readLineSync());
//   if (j % 2 == 1 || j % 3 ==1) {
//     print("The Number is a PRIME Number");
//   } else if (j % 2 != 1 || j % 3 != 1) {
//     print("The Number is NOT a PRIME Number");
// }//else if(j % 3 == 0){
//   print("The Number is NOT a PRIME Number");
// }
//}

void mainbu() {
  stdout.write("Please give us a number: ");
  int chosenNumber = int.parse(stdin.readLineSync());
  checkPrime(chosenNumber);
}

void checkPrime(int number) {
  // List comprehensions
  List<int> a = [
    for (var i = 1; i <= number; i++)
      if (number % i == 0) i
  ];
  // Check for prime
  a.length == 2
      ? print("The chosen number is a prime")
      : print("The chosen number is not a prime");
}
