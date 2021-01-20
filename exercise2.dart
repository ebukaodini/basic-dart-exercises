/**
 * Exercise 2
 * Ask the user for a number. 
 * Depending on whether the number is even or odd, print out an appropriate message to the user.
 */
import 'dart:io';

main(List<String> args) {
  maind();
  maina();
}
//my answer
maind() {
  print("Enter your number here:");
  int b = int.parse(stdin.readLineSync());
  //for(var i in b){
  if (b % 2 == 0) {
    print("The Number you entered is an EVEN number");
  } else {
    print("The Number you entered is an ODD number");
  }
}

void maina() {
  stdout.write("Hi, please choose a number: ");
  int number = int.parse(stdin.readLineSync());
  if (number % 2 == 0) {
    print("Chosen number is even");
  } else {
    print("Chosen number is odd");
  }
}

//}
