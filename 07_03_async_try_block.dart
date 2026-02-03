// Example of using try-catch within an async function in Dart
// This code demonstrates error handling in asynchronous operations using try-catch blocks.

Future<String> loginUser(String username) async {
  print("Connecting to Fitlink.....");
  await Future.delayed(Duration(seconds: 3));

  if (username.length < 3) {
    throw Exception("Username is too short! Must be more than 3 letters");
  }

  return "Successfully logged in as $username";

}

void main(List<String> args) async{
  print("----- Fitlink Login Page------");

  try {
    String loggedInUser = await loginUser("Melaniman");
    print(loggedInUser);
  } catch (e) {
    print("Error logging in: $e");
  }finally{
    print("System: Login attempt completed");
  }
  
}

// In this code:
// - The `loginUser` function simulates a login process and throws an exception if the
//   username is too short.
// - The `main` function calls `loginUser` within a try block to handle potential errors.
// - If an error occurs, it is caught in the catch block, and an error message is printed.
// - The finally block executes after the try-catch, indicating the completion of the login attempt.
// This pattern is useful for managing errors in asynchronous code effectively.
