/**
 * Exercise 9
 * Generate a random number between 1 and 100. Ask the user to guess the number, 
 * then tell them whether they guessed too low, too high, or exactly right.
 * Keep track of how many guesses the user has taken, and when the game ends, print this out.
 */

import 'dart:io';
import 'dart:math';

main(List<String> args) {
  tube();
}

void tube() {
  print("Type exit to quit the game");
  guessingGame();
}

guessingGame() {
  final random = Random();
  int randNumber = random.nextInt(100);
  int attempt = 0;
  while (true) {
    attempt += 1;
    stdout.write("Please choose a number between 0 and 100: ");
    String chosenNumber = stdin.readLineSync();
    // Make sure user does not go out of limits
    if (chosenNumber.toLowerCase() == "exit") {
      print("\nBye");
      break;
    } else if (int.parse(chosenNumber) > 100) {
      print("Please do not go over 100");
      continue;
    }
    // Main logic
    if (int.parse(chosenNumber) == randNumber) {
      print("Bingo! You tried $attempt times\n");
      continue;
    } else if (int.parse(chosenNumber) > randNumber) {
      print("You are higher");
      continue;
    } else {
      print("You are lower");
      continue;
    }
  }
}
