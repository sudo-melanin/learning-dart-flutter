import 'dart:async';        // For Future and Stream
import 'dart:io';           // For File operations


// A multi-service hub that provides various services like market updates and fitness tracking.
// Enums to represent different service types and account statuses.

enum ServiceType {
  market,
  fitness
}

enum AccountStatus {
  active,
  suspended,
  pending
}

// Mixin to provide logging functionality across different services in the hub.
mixin Logger {
  void logAction (String message) {
    print("LOG [${DateTime.now()}]: $message");
  }
}

// Generic class to handle server responses for different types of data, including error handling.
class ServerResponse<T> {
  T? data;
  String? error;
  
  ServerResponse({this.data, this.error});
}

// abstract class to represent a user in the multi-service hub, with properties for name and account status.
abstract class User {
  String name;
  AccountStatus status = AccountStatus.active;
  User(this.name);
}

// A class with inheritance and mixin to represent a premium user in the multi-service hub, 
//with additional properties for balance and methods to spend money while logging actions.

class PremiumUser extends User with Logger {
  double balance;

  PremiumUser(String name, this.balance) : super(name);

  void spend(double amount) {
    if (balance >= amount) {
      balance -= amount;
      logAction("$name spent \$$amount. Remaining: $balance");
    } else {
      logAction("Insufficient funds to spend $amount.");
    }
  }
}

// Stream to simulate live market updates, yielding new updates every few seconds to mimic real-time data streaming.
Stream<String> liveMarketUpdates() async* {
  List<String> updates = [
    "Flash Sale: Rice is 20% off!.",
    "FitLink: New Yoga session starts in 5 mins",
    "Delivery: Your order is on the way."
  ];

  for (var news in updates) {
    await Future.delayed(Duration(seconds: 2));
    yield news;
  }
}

// future to simulate a transaction process for a premium user, checking if the user has sufficient balance to complete
//the transaction and returning a server response accordingly.

Future<ServerResponse<bool>> processTransaction(PremiumUser user, double cost) async {
  print("\n Processing transaction for ${user.name}...");
  await Future.delayed(Duration(seconds: 2)); 

  if (user.balance >= cost) {
    user.spend(cost);
    return ServerResponse(data: true);
  } else {
    return ServerResponse(error: "Insufficient funds.");
  }
}


void main(List<String> args) async {
  print("-------- Welcome to the Multi-Service Hub --------\n");

  // Create a premium user and process a transaction
  var amos = PremiumUser("Amos Emmanuel", 5000.0);

  // Start live market updates in the background
  print("Starting live market updates...\n");
  var newsStream = liveMarketUpdates().listen((news) {
    print("[Market Update]: $news");
  });

  try {

  // Simulate user interactions with the multi-service hub, allowing them to purchase services and handle transactions.
    Map<String, double> services = {
      "Market Gist: Bag of Rice": 850.0,
      "FitLink: Monthly Trainer": 500.0,
    };
    for (var entry in services.entries) {
      stdout.write("\nPurchase ${entry.key} for \$${entry.value}? (y/n): ");
      String? choice = stdin.readLineSync();

      if (choice?.toLowerCase() == 'y') {
        var result = await processTransaction(amos, entry.value);

        if (result.data == true) {                                  // Purchase successful
          print("Purchase successful for ${entry.key}!");
        } else {
          print("Purchase failed: ${result.error}");                // Purchase failed due to insufficient funds
        }
      }
    }
  } catch (e) {
    print("An error occurred: $e");
  } finally {
    await Future.delayed(Duration(seconds: 5)); // Allow some time for market updates to finish
    print("\nFinal Wallet Balance: \$${amos.balance}");
    await newsStream.cancel();
    print("\nThank you for using the Multi-Service Hub. Goodbye!");
  }
}