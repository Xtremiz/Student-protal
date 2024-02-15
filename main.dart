import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();

  if (name == "g" && password == "g") {
    print("login");
  } else {
    print("fail");
  }
}
