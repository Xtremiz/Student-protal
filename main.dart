import 'dart:io';

void main() {
  stdout.write("Enter your email: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();

  if (name == "g" && password == "g") {
    print("login successful");

    stdout.write("Enter your marks obtained: ");
    String? marksInput = stdin.readLineSync();
    int? marksobtained = int.tryParse(marksInput ?? '');

    stdout.write("Enter your total marks: ");
    String? totalMarksInput = stdin.readLineSync();
    int? totalmarks = int.tryParse(totalMarksInput ?? '');

    if (marksobtained != null && totalmarks != null && totalmarks != 0) {
      double percentage = (marksobtained / totalmarks) * 100;
      print("Marks obtained: $marksobtained");
      print("Total marks: $totalmarks");
      print("Percentage: $percentage");
      print(
          "from your $percentage% your passing status is ${grade(percentage)}");
    } else {
      print("Invalid marks or total marks.");
    }
  } else {
    print("Login failed");
  }
}

grade(double number) {
  if (number >= 80) {
    return "A+ ";
  } else if (number >= 70) {
    return "A";
  } else if (number >= 60) {
    return "B";
  } else if (number >= 50) {
    return "C";
  } else if (number >= 40) {
    return "D";
  } else {
    return "fail";
  }
}
