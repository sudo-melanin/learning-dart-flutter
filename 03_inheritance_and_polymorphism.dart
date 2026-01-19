void main() {
var item1 = DigitalProduct("Atomic Habits by JamesClear", 5.0, "www.atomichabits.com");
var item2 = PhysicalProduct("Bag of salt", 2.0, 1.5);
item1.displayInfo();
item2.displayInfo();
var item3 = Product("Generic Product", 3.0);
item3.displayInfo();
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);

  void displayInfo() {
    print("Product: $name | Price: \$${price}");
  }
}

class DigitalProduct extends Product {    // Inheriting from Product class
  String downloadLink;

  DigitalProduct(String name, double price, this.downloadLink) : super(name, price); // Calling superclass constructor

  @override   // Overriding method to include download link
  void displayInfo() {
    print("Name: $name | Price: \$${price} | Download Link: $downloadLink");
  }
}

class PhysicalProduct extends Product {      // Inheriting from Product class
  double weight;

  PhysicalProduct(String name, double price, this.weight) : super(name, price); // Calling superclass constructor
  @override   // Overriding method to include weight
  void displayInfo(){
    print("Name: $name | Price: \$${price} | Weight: ${weight}kg");
  }
}