enum MemberShipLevel {
  premium, free, trainer
}

extension Capitalized on String {
  String capitalise() => "${this[0].toUpperCase()}${substring(1)}";
}

class Member {
  String name;
  MemberShipLevel level;

  Member(this.name, this.level);
  void displayInfo() {
    print("Name: $name");
    print("Membership Level: ${level.name.capitalise()}");
  }
}

void main(List<String> args) {
  Member member1 = Member("Aimz", MemberShipLevel.free);
  member1.displayInfo();

  switch (member1.level) {
    case MemberShipLevel.free:
      print("Showing ads...");
      break;
    case MemberShipLevel.premium:
      print("No ads, enjoy your premium content!");
      break;
    case MemberShipLevel.trainer:
      print("Access to training materials and resources.");
      break;
  }
  String random = "hello world";
  print(random.capitalise());

}