class Product {
  String name;
  double _price; // Private variable

  Product(this.name, double startingPrice) : _price = startingPrice;  // Constructor

  // getters allow us to read private variables
  double get price => _price; // Getter for price

  // setters allow us to modify private variables
  set price(double newPrice) {
    if (newPrice >= 0) {
      _price = newPrice;
      print("Price updated to \$$_price");
    } else {
      print('Price cannot be negative');
    }
  }
}

void main() {
  var item1 = Product("Rice", 80.0);

  print(item1.price); // Accessing price using getter
  item1.price = 90.0; // Updating price using setter
  item1.price = -10.0; // Attempting to set a negative price and gets blocked
}