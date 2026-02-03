import 'dart:io';

abstract class User {
  String name;
  User(this.name);
}

class Member extends User {
  double balance;
  Member(String name, this.balance) : super(name);
}

double calculateTotal (double price, int qty) => price * qty;

Future<void> processPayment(double amount) async {
  print("\n Processing Payment......");
  await Future.delayed(Duration(seconds: 3));
  print("Payment of $amount Successfully");
}

void main(List<String> args) async{
  try {
    print("==== Checkout ====");
    Member user = Member("Amos Melanin", 5000.0);

    Map<String, double> addOns = {
      "Protein Shake": 1500.0,
      "Yoga Mat": 2500.0,
      "Personal Trainer": 3000.0
    };

    double cartTotal = 0.0;

    for (var item in addOns.entries) {
      stdout.write("Do you wat to add ${item.key} for ${item.value}? (y/n): ");
      String? choice = stdin.readLineSync();

      if (choice?.toLowerCase() == 'y') {
        cartTotal += item.value;
        print("${item.key} added to cart.");
      }
   }
   
   if (cartTotal > user.balance) {
      print("Error: Insufficienct funds. Your balance is ${user.balance}");
   } else if (cartTotal == 0) {
      print("No items selected. Cart is empty.");
   } else {
    await processPayment(cartTotal);
    user.balance -= cartTotal;
    print("Remaining Balance: ${user.balance}");
    print("Enjoy your purchases, ${user.name}!");
   }
  }
    catch (e) {
    print("An error occurred during checkout: $e");
    }
}
  