void main(){
//1. Variables and data types

  const appName = "Fit Link";       // Constant variable set at compile time
  final userName = "MelaninMan";    // Final variable set at runtime
  int age = 32;
  double weight = 86.5;
  bool isActive = true;


//2. Logic and control flow

  print("\n-------Welcome to $appName, $userName!-------");

  if (age <= 18){
    print(" \nPlease Note: You need a signed parental consent or personal trainer to continue.");
  } else {
    print("\nAge Verifed, you may proceed.");
  }

  //3. Simple logic (Calculating data )
  // Max Heart Rate = 220 - age

  int maxHeartRate = 220 - age;
  print("\nYour calculated Max Heart Rate is $maxHeartRate in BPM");

  // Using Comparisons and logical operators
  if(weight > 85 && isActive == false){
    print("\nRecomendation: Start with light weights and check out our pro plans for guided exercises!");
  } else if (weight <= 85 || isActive == true){
    print("\nYou are on the right track! Keep it up!");
  }
}
