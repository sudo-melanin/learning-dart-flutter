// Asynchronous Programming in Dart
// Simulating a user login with Future and async/await


Future<String> loginUser(String username) async {         // async function
  print("loging in user: $username");
  await Future.delayed(Duration(seconds: 4));           // simulating a network call delay
  return "User $username logged in successfully";       // returning a Future<String>
}

void main(List<String> args) async{                     // async function
  String message = await loginUser("Melanin Man");    // waiting for the Future to complete
  print(message);                                     // printing the result after login
}