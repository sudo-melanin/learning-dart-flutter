// Anonymous Functions in Dart
// An anonymous function is a function that is defined without a name.
// They are often used as arguments to higher-order functions, such as map, filter, and sort.
// This example demonstrates the use of anonymous functions to apply a discount to a list of prices.

void main(List<String> args) {
  List<double> cartPrices = [29.99, 49.99, 19.99, 99.99];

  var discountedPrices = cartPrices.map((prices){     
    return prices * 0.9; // Applying a discount to each price in the cart, using an anonymous function.
  }).toList();

  print("\nOriginal Prices: $cartPrices");
  print("\nDiscounted Prices: $discountedPrices");

}