
// define the blueprint, the class
class Product {

  // The properties of the class (variables)
  String name;
  double price;
  int quantity;

  // Constructor: the builder function
  Product(this.name, this.price, this.quantity);

  // methods of the class, the action it can perform.
  void printSummary(){
    double total = price * quantity;
    print("$name: $quantity units at $price each. Total: \$$total");
  }
}

void main(List<String> args) {

  // Creating an instance of the class (Object)
  Product item1 = Product("Rice", 4500, 2);
  Product item2 = Product("Beans", 1300, 4);

  // prints a property of the objects
  print(item2.name);
  print(item1.price);

  // calling the function on an object
  item1.printSummary();

}