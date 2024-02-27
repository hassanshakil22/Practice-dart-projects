// import 'dart:html';
// import 'dart:io';

// input({required String prompt, required bool Function(String?) condition}) {
//   print(prompt);
//   String? inputString = stdin.readLineSync()!;
//   while (true) {
//     if (condition(inputString)) {
//       // if condition is true meaning the arguemnt is ending with @gmail.com the true
//       return inputString;
//     } else {
//       print("try Again");
//       inputString = stdin.readLineSync();
//     }
//   }
// }

// void main() {
//   var email = input(
//       prompt: "enter email -> ",
//       condition: (inputByuser) {
//         return inputByuser!.endsWith(
//             "@gmail.com"); // condition provides a condition for which the value to be assigned in variable of input
//       });

//   print(email);

//   enterName(
//       name: "hassan",
//       fatherName: (input) {
//         return input.endsWith("kil");
//       });
// }

// enterName({required String name, required Function(String) fatherName}) {
//   stdout.write(name);
//   stdout.write("father name:");
//   var input = stdin.readLineSync();

//   while (true) {
//     if (fatherName(input!)) {
//       return "$name $input";
//     } else {
//       print("wrong father ");
//       input = stdin.readLineSync();
//     }
//   }
// }

import 'dart:io';

nameCheck(String givenname) {
  if (givenname.isNotEmpty) {
    print("valid name $givenname");
  } else {
    print("Invalid name ");
  }
}

myFunc(Function nameCheck) {
  stdout.write("name --> ");
  String? name = stdin.readLineSync();
  nameCheck(name!);
}

void main() {
  myFunc(nameCheck);
}

// import 'dart:io';

// void nameCheck(String givenName) {
//   if (givenName.isNotEmpty) {
//     print("Valid name: $givenName");
//   } else {
//     print("Invalid name");
//   }
// }

// void myFunc(Function(String) nameCheckFunction) {
//   String? name = stdin.readLineSync();
//   nameCheckFunction(name!);
// }

// void main() {
//   myFunc(nameCheck);
// }
