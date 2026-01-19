void main() {
  Product.displayTotalProducts(); // Display total products created;
  var item1 = Product("Rice");
  item1.checkStatus();
  var item2 = Product("Wheat");
  item2.checkStatus();

  Product.displayTotalProducts(); // Display total products created;

  var item3 = Product("Sugar");
  item3.checkStatus();
  Product.displayTotalProducts();
  
}
// Static members example

class Product {
  String name;
  static double totalProductsCreated = 0; // Static variable to track total products

  Product(this.name) {
    totalProductsCreated++; // Increment total products created
    print("Created product: $name");
  }

  static void displayTotalProducts() {      // Static method to display total products
    print("Total products created: $totalProductsCreated");
  }

  void checkStatus(){
    print("I am $name and I am available in the total of $totalProductsCreated products stock");
  }
}