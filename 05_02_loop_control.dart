void main(List<String> args) {
  
  //    Break
  List<String> items = ["Apple", "Rice", "Milk", "Beans", "Yam"];
  for (int i = 0; i < items.length; i++){
    print("Checking item at $i: ${items[i]}");
    if (items[i] == "Milk") {
      print("Found it!!");
      break;              // This stops the loop as soon the if condition is satisfied.
    }
  }
// Sum Challenge (using for loop)
  int total = 0;
  List<int> prices = [100, 250, 500, 1000];
  for (int i = 0; i < prices.length; i++){
    total += prices[i];
    print("Total prices at $i: $total");
  }
  print("Overall total price: $total");

  List<int> prices1 = [100, 250, 500, 1000];
  int total1 = 0;
  int initial = 0; // 1. Start (Manual)

  while (initial < prices1.length) { // 2. Condition
    total1 += prices1[initial];
    initial++; // 3. Step (Manual - Don't forget this or it runs forever!)
  }

  print("Total using while loop: $total1");

  //    Continue: 
  
  List<String> schedule = ["Running", "Rest Day", "Weights", "Rest Day", "Yoga"];

  for (int i = 0; i < schedule.length; i++) {
    if (schedule[i] == "Rest Day") {
      print("Skipping index $i: It's a rest day. Enjoy!");
      continue;         // This jumps straight to the next 'i', skipping the print below
    }
    print("Working hard on: ${schedule[i]}");
  }

}
