abstract class Member {
  String name;
  String _authKey = "FL-9901";      // Encapsulation - private variable

  Member(this.name);

  void accessWorkout();

  void showProfile(){
    print("User: $name | Status: ${this.runtimeType}");
  }
}

// Inehritance

class FreeMember extends Member {
  FreeMember(String name) : super(name);

  @override
  void accessWorkout(){
    print("Accessing:  3 basic workouts (Ads and in app purchase)");
  }
}

class PremiumMember extends Member {
  double monthlyFee;
  PremiumMember(String name, this.monthlyFee) : super(name);

  @override
  void accessWorkout(){
    print("Accessing:  500+ Pro workouts (No Ads)");
  }

  void downloadVideo(){
    print("Downloading workout for offline use");
  }
}

class Trainer extends Member{
  Trainer(String name) : super(name);

  @override
  void accessWorkout() {
    print("You can upload your own workout");
  }

  void uploadWorkout(){
    print("Please upload your workout");
  }
}
void main(List<String> args) {
  
  List<Member> fitLinkUsers = [
    FreeMember("Amos"),
    PremiumMember("Melanin Man", 5000.0),
    FreeMember("Tunde"),
    Trainer("Walter")
  ];

  print("--- FitLink Daily Sync ---");

  for(var user in fitLinkUsers){
    user.showProfile();
    user.accessWorkout();
  
    if (user is PremiumMember){
    user.downloadVideo;
    }
    print("-" * 25);
  }
}