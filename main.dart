import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();

  if (name != null && password != null) {
    print("Name: $name");
    print("Password: $password");
  } else {
    print("Invalid input.");
  }
}
