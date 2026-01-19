void main() {

  var item1 = DigitalProduct("E-book: Flutter Development", 10.0, "www.flutterdev.com/ebook");
  var item2 = PhysicalProduct("Hardcover Book: Dart Programming", 25.0, 0.8);

  // var item3 = Product("Generic Product", 15.0); // This line will cause an error because Product is abstract and cannot be instantiated.
  
  item1.displayInfo();
  item2.displayInfo();
  
}


abstract class Product {
  String name;
  double price;

  Product(this.name, this.price);

  void displayInfo(); // Abstract method
}

class DigitalProduct extends Product {
  String downloadLink;

  DigitalProduct(String name, double price, this.downloadLink) : super(name, price);

  @override
  void displayInfo() {
    print("Digital Product: $name | Price: \$${price} | Download Link: $downloadLink");
  }
}

class PhysicalProduct extends Product {
  double weight;

  PhysicalProduct(String name, double price, this.weight) : super(name, price);

  @override
  void displayInfo() {
    print("Physical Product: $name | Price: \$${price} | Weight: ${weight}kg");
  }
}