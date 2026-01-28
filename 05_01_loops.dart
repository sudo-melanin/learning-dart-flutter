
void main(List<String> args) {

  // for loop
  for (int i = 1; i<= 10; i++) {
    print("Start Reps: $i");
  }
  print("\nSets completed! Rest time: 60 seconds");

  // while loops: continues running as long as the condition is true

  int battery = 15;
  
  while (battery > 5) {
    print("Battery usage optimal, battery at $battery%");
    battery -=3;
  }
  print("\nLow Battery: please charge");

  //do-while loop: this runs the code first before checking the condition, it ensures the code runs at least once.

  int attempts = 0;
  do {
    print("\nAttempting to connect to server!");
    attempts++;
  } while (attempts < 0);
  print("Try again!");
}