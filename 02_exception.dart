void main(List<String> args) {
  // Here, we'll demonstrate basic exception handling in Dart using try-catch blocks.

  // Example 1: Handling division by zero
  try {                                         // Start of try block
    int numerator = 10;
    int denominator = 0;
    int result = numerator ~/ denominator;      // Integer division
    print("Result: $result");
  } catch (e) {                                 // Catch block to handle exceptions, e holds the exception.    
    print("Caught an exception: $e");      
  }

  // Example 2: Handling format exception
  try {
    String invalidNumber = "abc";
    int parsedNumber = int.parse(invalidNumber); 
    print("Parsed Number: $parsedNumber");
  } catch (e) {
    print("\nCaught an exception: $e");
  }

  // Example 3: Using finally block
  try {
    List<int> numbers = [1, 2, 3];
    print("\nAccessing element at index 5: ${numbers[5]}");   // This will throw an exception
  } catch (e) {
    print("Caught an exception: $e");
  } finally {
    print("\nExecution of the try-catch block is complete."); // This block always executes
  }

  // Note: Dart also supports custom exceptions and rethrowing exceptions - to be explored later.

  // Example 4: Handling exceptions in a list of maps
  try{
    List<Map<String, dynamic>> buddyList = [
    {
      "name": "Alice",
      "age": "25",
    },
    {
      "name": "Bob",
      "age": "thirty",
    },
  ];
    for (var buddy in buddyList){
      int age = int.parse(buddy["age"]);
      print("\n${buddy["name"]} is $age years old.");
    }
  } catch(e){
        print("\nCaught an exception: $e");
      }
}