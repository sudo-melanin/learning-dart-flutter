import 'dart:io';       // 

void main(List<String> args) {
  stdout.write("Enter Your Name: ");      // Prompting the user for their name

  String? name = stdin.readLineSync();     // Reading the input, the "?" signifies null safety, more on that later.

  stdout.write("Enter your age: ");

  String? ageInput = stdin.readLineSync();

  // Parsing the ageInput to integer, the "??" provides fallback value of 0 incase the user did not enter any value
  int age = int.parse(ageInput?? "0");  

  print("--------\n Welcome to fit link, $name-------");
  print("--------\n Your are $age years old which is a valid age, you may proceed");
}