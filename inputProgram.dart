import 'dart:io';

input({required String prompt, required bool Function(String?) condition}) {
  print(prompt);
  String? inputString = stdin.readLineSync()!;
  while (true) {
    if (condition(inputString)) {
      return inputString;
    } else {
      print("try Again");
      inputString = stdin.readLineSync();
    }
  }
}

void main() {
  var email = input(
      prompt: "enter email -> ",
      condition: (inputString) {
        return inputString!.endsWith(
            "@gmail.com"); // condition provides a condition for which the value to be assigned in variable of input
      });

  print(email);

  enterName(
      name: "hassan",
      fatherName: (input) {
        return input.endsWith("kil");
      });
}

enterName({required String name, required Function(String) fatherName}) {
  stdout.write(name);
  stdout.write("father name:");
  var input = stdin.readLineSync();

  while (true) {
    if (fatherName(input!)) {
      return "$name $input";
    } else {
      print("wrong father ");
      input = stdin.readLineSync();
    }
  }
}
