import 'dart:io'; // Required for user input

late String shopName;

void main() {

  try {
    print(shopName);
  } on Error {
    shopName = "Market Gist Interactive";
  }

  Map<String, double> inventory = {
    "Rice (Bag)": 45000,
    "Beans (Mudu)": 2800,
    "Garri (Paint)": 1500,
  };

  double grandTotal = 0;

  print("=== Welcome to $shopName ===");
  print("Follow the prompts to build your cart.\n");

  // Looping through inventory
  inventory.forEach((name, price) {
    print("Item: $name | Price: ₦$price");
    stdout.write("How many $name do you want to buy? ");

    // Handling User Input and Null Safety
    String? input = stdin.readLineSync();
    
    // We use int.tryParse to turn String input into a number.
    // If user types "abc", it returns null, so we use ?? to default to 0.
    int quantity = int.tryParse(input ?? "0") ?? 0;

    if (quantity > 0) {
      double itemTotal = price * quantity;
      grandTotal += itemTotal;
      print("Added to cart: $quantity x $name = ₦$itemTotal");
    } else {
      print("Skipped $name.");
    }
    print("-" * 30);
  });

  // Final Result
  print("\n CHECKOUT SUMMARY");
  print("Total Amount Due: ₦${grandTotal.toStringAsFixed(2)}");
  
  if (grandTotal > 50000) {
    print("Congratulations! You qualify for free delivery in Lagos.");
  }
}