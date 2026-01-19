import 'dart:io';

void main(List<String> args) {
  
  print("===== MARKET GIST CALCULATOR =====");

  // Get product name

  stdout.write("Enter Product Name: ");
  String? productName = stdin.readLineSync() ?? "Unknown Item";

  // Get product price
  stdout.write("Enter price for 1 unit of $productName in ₦: ");
  String? priceInput = stdin.readLineSync();
  double unitPrice = double.tryParse(priceInput ?? "0") ?? 0.0;
  // Using double.tryParse is safer than double.parse (returns null instead of crashing)

  // Get quantity
  stdout.write("Enter quantity of $productName: ");
  String? quantityInput = stdin.readLineSync();
  int quantity = int.tryParse(quantityInput ?? "1") ?? 1;
  // Using int.tryParse is safer than int.parse (returns null instead of crashing)

  // Calculate total cost
  double totalCost = unitPrice * quantity;

  // Output the result and logic

  print("\n--- RECEIPT ---");
  print("Product: $productName");
  print("Quantity: $quantity");
  print("Total Cost: ₦${totalCost.toStringAsFixed(2)}");  // toStringAsFixed(2) formats to 2 decimal places

  // Control Flow Check
  if (totalCost >= 10000) {
    print("PROMO: You've qualified for a free delivery coupon!");
  } else {
    print("NOTE: Spend ₦${10000 - totalCost} more to get free delivery.");
  }
  print("----------------\n");
  print("Thank you for using the Market Gist Calculator!");
}