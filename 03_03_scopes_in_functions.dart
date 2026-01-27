// Example of variable scope in Dart
// Global variable
String appName = "FitLink";

// Main function
// If you don't call the changeName function, the global variable remains unchanged.
// After calling changeName, the global variable is updated.
// note that if you declare a variable with the same name inside changeName using 'var' or 'String', 
// it will create a local variable instead of modifying the global one.
// if you want to modify the global variable, do not use 'var' or type declaration inside the function.
void main(List<String> args) {
  print(appName);
  changeName();
  print(appName);
}

// Function to change the global variable
void changeName(){
  appName = "GymBuddy";
  print(appName);
}





