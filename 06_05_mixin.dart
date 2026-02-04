// mixin in dart
// A mixin is a way of reusing a class's code in multiple class hierarchies.
// Mixins are used to add functionality to classes without using inheritance.

mixin GenerateReport {
  report(){
    print("Generating Report...");
  }
}

class Admin with GenerateReport {
  String name;
  Admin(this.name);

  @override
  report(){
    print("Admin: $name");
    super.report();
  }
}
void main(List<String> args) {
  Admin chief = Admin("Alice");
  chief.report();
}

// In this example, we define a mixin GenerateReport that has a method report().
// The Admin class uses the mixin to gain the report functionality.
// When we create an instance of Admin and call report(), it prints the admin's name
// and then calls the report method from the mixin.