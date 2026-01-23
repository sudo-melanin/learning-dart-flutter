void main(List<String> args) {
  // Here, we'll start our journey into Dart functions!

  double total = calculateTotalPrice(19.99, 3);       // Calling the function with price and quantity
  print("Total Price: \$${total}");

  double discountedPrice = calculateDiscountedPrice(100.0, 0.15); // Calling the arrow function
  print("Discounted Price: \$${discountedPrice}");
}

// A function is a reusable block of code that performs a specific task.
// It helps to keep our code organized and manageable. 
// The general syntax of a function in Dart is as follows:
/* returnType functionName(parameterType parameterName) {
     // Function body
     return value; // if returnType is not void
} */

// Let's break down the components:
// 1. returnType: This specifies the type of value the function will return. If the function does not return any value, we use 'void'.
// 2. functionName: This is the name we give to our function. It should be descriptive of what the function does.
// 3. parameterType parameterName: These are the inputs to the function. A function can have zero or more parameters.
// 4. Function body: This is where we write the code that defines what the function does.
// 5. return value: If the function has a return type other than void, we use the return statement to send a value back to the caller.
// Let's look at a simple example of a function that calculates total price using price and quantity:

double calculateTotalPrice(double price, int quantity) {
  return price * quantity;
}

// note, to call this function, you would do something like:
// double total = calculateTotalPrice(19.99, 3); in the main function or elsewhere in your code.

// note: functions can have various return types and can also have optional parameters, named parameters, and more advanced features which we will explore in later lessons.


// You can use arrow syntax for functions with a single expression:
double calculateDiscountedPrice(double price, double discount) => price - (price * discount);
// Note how there's no need for curly braces or a return statement in this case.
// suitable for simple calculations or operations.