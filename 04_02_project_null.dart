
// Demonstration of null safety features in Dart
// This code showcases the use of late variables, null-aware operators, and error handling.

// late variable declaration
late String shopName;
void main(List<String> args) {

  // Error handling when accessing uninitialized late variable
  try {
    print("---------- Welcome to $shopName ----------");
  }on Error{          // Catching general Error
      print("Error: shopName has not been initialized yet.");
      shopName = "Market Gist (Default)";     // Initializing late variable
      print("Setting default shop name to $shopName");
    }catch (e) {            // Catching any other exceptions
    print("An unexpected error occurred: $e");
  } finally {     // finally block always executes
    print("System check complete. Enjoy your shopping at $shopName!");
  }

  // Null-aware operators demonstration

  String productName = "Garri";
  double? discountPrice;
  String? category;

  // Assigning default value if category is null
  category ??= "Unassigned";

  double finalPrice = 1000.0;
  // Using null-coalescing operator to assign displayPrice
  double displayPrice = discountPrice ?? finalPrice;

  print("Product: $productName (Category: ${category!.toUpperCase()})");  // Using ! to assert category is not null
  print("Price: ₦$displayPrice");

  String? description;
  // Using null-aware access operator to get length safely
  int descriptionLength = description?.length ?? 0;
  print(  "Description Length: $descriptionLength characters");


}