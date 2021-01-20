/**
 * Exercise 8
 * Make a two-player Rock-Paper-Scissors game against computer.
 * Ask for player’s input, compare them, print out a message to the winner.
 */

import 'dart:io';
import 'dart:math';

main(List<String> args) {
  maindin();
  
}


void maindin() {
  print("Welcome to Rock, Paper, Scissors\nType 'exit' to stop the game");
  final random = Random();
  // Rules of the game
  Map<String, String> rules = {
    "rock": "scissors",
    "scissors": "paper",
    "paper": "rock"
  };
  // Initial score
  int user = 0;
  int comp = 0;
  // Options for computer to choose
  List<String> options = ["rock", "paper", "scissors"];
  // Actual game
  while (true) {
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("\nPlease choose Rock, Paper or Scissors: ");
    String userChoice = stdin.readLineSync().toLowerCase();
    if (userChoice == "exit") {
      print("\nYou: $user Computer: $comp\nBye Bye!");
      break;
    }
    if (!options.contains(userChoice)) {
      print("Incorrect choice");
      continue;
    } else if (compChoice == userChoice) {
      print("We have a tie!");
    } else if (rules[compChoice] == userChoice) {
      print("Computer wins: $compChoice vs $userChoice");
      comp += 1;
    } else if (rules[userChoice] == compChoice) {
      print("You win: $userChoice vs $compChoice");
      user += 1;
    }
  }
}