// Example of nullable types in Dart
// In Dart, a variable can be declared as nullable by adding a '?' after the type.
// This means the variable can hold either a value of the specified type or null.

late String favouriteWorkout;   // Non-nullable variable, must be initialized before use
void main(List<String> args) {
  String userName = "Melanin Man";
  String? bio;

  String status = bio ?? "New Member";    // bio is null, so it takes the value "New Member"

  print("User Status: $status");

  bio = "Fitness Enthusiast";
  status = bio ?? "New Member";     // Now bio is not null, so it takes its value.
  print("User Status: $status");


// Null-aware operators:
// '??' : Returns the expression on its left if it's not null; otherwise, 
//        it returns the expression on its right.
// '?.' : Used to access a member of an object only if the object is not null.
// '??=': Assigns a value to a variable only if that variable is currently null.
  
  String? category; // It's empty (null)

  // Only assign if it's currently null
  category ??= "General"; 
  print("Category 1: $category"); // Prints: General

  // Try to assign it again
  category ??= "Electronics"; 
  print("Category 2: $category");     // Still prints: General! (Because it wasn't null anymore)

// ! : Used to assert that a nullable expression is not null.

  double? discount;
  discount ??= 0.05;
  print("Discount: $discount");
  print(discount.toStringAsFixed(2)); // Asserts discount is not null and formats it

  print("\nLoading favourite workout...");
  favouriteWorkout = "Yoga";          // Now initialized
  print("Favourite Workout: $favouriteWorkout");
}