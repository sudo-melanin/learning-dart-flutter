// Asynchronous Programming in Dart 
// Simulating a network call with Future and async/await

void main (List<String> args) async {               // async function
  
  print("1. Welcome to FitLink");
  print("\n2. we are now loading your dashboard...");

  await Future.delayed(Duration (seconds: 3));      // simulating a network call with 3 seconds delay

  print('"\n3. Dashboard loaded successfully!"');
  print("\4. Enjoy your workout session");

}