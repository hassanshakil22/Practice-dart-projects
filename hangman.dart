import 'dart:io';

void main() {
  String guessName = "EVAPORATION";
  int wrong = 0;
  List<bool> guessedLetters = List.filled(guessName.length, false);

  while (wrong < 6) {
    String? attempt = stdin.readLineSync();

    if (attempt != null && attempt.isNotEmpty) {
      String letter = attempt.toUpperCase()[0];

      bool correctGuess = false;
      for (int i = 0; i < guessName.length; i++) {
        if (guessName[i] == letter && !guessedLetters[i]) {
          guessedLetters[i] = true;
          correctGuess = true;
        }
      }

      if (correctGuess) {
        print("Nice!");
      } else {
        print("Wrong, try again");
        wrong++;
      }

      printGuessedWord(guessName, guessedLetters);

      if (guessedLetters.every((element) => element)) {
        print("Congratulations! You guessed the word.");
        break;
      }
    } else {
      print("Invalid input. Please enter a single letter.");
    }
  }

  if (wrong == 6) {
    print(
        "Sorry, you've run out of attempts. The correct word was $guessName.");
  }
}

void printGuessedWord(String word, List<bool> guessedLetters) {
  for (int i = 0; i < word.length; i++) {
    if (guessedLetters[i]) {
      stdout.write(word[i] + ' ');
    } else {
      stdout.write('_ ');
    }
  }
  print('');
}
