void main(List<String> args) {
  greetUser("John", "Doe");   // Calling the function with first and last name, prints: Hello, John Doe! not Doe John! - order matters(positional)

  displayUserInfo(name: "Alice", age: 30); // Calling the function with named parameters, prints: Name: Alice, Age: 30
  displayUserInfo(age: 25, name: "Bob");   // order doesn't matter

  formatPrice(1500.0);              // Calling with default currency symbol
  formatPrice(10.99, "\$");        // Calling with custom currency symbol

  logEvent(eventName: "UserLogin");               // prints: Event: UserLogin, Severity: info
  logEvent(eventName: "ServerError", severity: "high"); // prints: Event: ServerError, Severity: high

  printReceipt();
  // You can further explore and experiment with functions and parameters in Dart!
}


// Parameters in Dart functions allow you to pass data into functions, 
//making them more flexible and reusable. There are several types of parameters you can use:
// 1. Positional Parameters: These are the most common type of parameters. 
//They are defined in the order they are declared and must be provided in that order when calling the function.

void greetUser(String firstName, String lastName) {
  print("Hello, $firstName $lastName!");
}
// In this example, firstName and lastName are positional parameters.
// When calling greetUser, you must provide the first name first, followed by the last name

// 2. Named Parameters: These parameters are defined using curly braces {} in the function definition.
// When calling the function, you specify the parameter names, allowing you to provide them in any order.

void displayUserInfo({required String name, required int age}) {
  print("Name: $name, Age: $age");
}
// You would call this function like so:
// displayUserInfo(age: 30, name: "Alice"); // order doesn't matter here
// Note the use of 'required' keyword to indicate that these named parameters must be provided when calling the function.

// 3. Optional Parameters: These parameters can be either positional or named and are not required when calling the function.

// Define the function with square brackets [] for optional positional parameters.
// Assign a default value using '=' so we avoid 'null' issues.
void formatPrice(double price, [String currency = "₦"]) {
  print("Price: $currency$price");
}   // You can call this function with or without the currency parameter:

// For named optional parameters, you can provide default values.
void logEvent({required String eventName, String severity = "info"}) {
  print("Event: $eventName, Severity: $severity");
}
// You can call this function with or without the severity parameter:
// Understanding these different types of parameters will help you write more flexible and maintainable Dart functions.

// Note: You can combine positional, named, and optional parameters in a single function as needed.

double getDiscount(double price){
  if (price > 5000){
    return 0.2; // 10% discount
  }else{
    return 0.1; // 5% discount
  }
}

void printReceipt(){
  double originalPrice = 1200.0;
  // Get discount rate based on original price
  double discountRate = getDiscount(originalPrice);
  // Calculate discount amount
  double discountAmount = originalPrice * discountRate;
  // Calculate final price after discount
  double finalPrice = originalPrice - discountAmount;

  print("Original Price: ₦$originalPrice");
  print("Discount Rate: ${discountRate * 100}% (Saved ₦$discountAmount) ");
  print("Final Price after discount: ₦$finalPrice");
}