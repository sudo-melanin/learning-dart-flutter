void main(List<String> args) {
  // Map is a collection of key-value pairs, creaeted using curly braces {}
  // Map<KeyType, ValueType> myMap = {key1: value1, key2: value2, ...};

  Map<String, double> productPrices = {
    "Rice": 4500.0,
    "Beans": 3700.0,
    "Yam": 2500.0,
  };

  // Printing the entire map
  print("\nProduct Prices: $productPrices");

  // Accessing values using keys
  print("\nPrice of Rice: ₦${productPrices["Rice"]}");   // Output: Price of Rice: ₦4500.0

  // Adding a new key-value pair
  productPrices["Garri"] = 2000.0;
  print("\nAfter adding Garri: $productPrices");

  // Removing a key-value pair
  productPrices.remove("Yam"); 
  print("\nAfter removing Yam: $productPrices");

  // Getting all keys
  print("\nAll Products: ${productPrices.keys}");

  // Getting all values
  print("\nAll Prices: ${productPrices.values}");

  // Getting the number of key-value pairs in the map
  print("\nNumber of Products: ${productPrices.length}");

  // There are other methods to manipulate maps such as clear, containsKey, update, etc. - to be explored later.

}