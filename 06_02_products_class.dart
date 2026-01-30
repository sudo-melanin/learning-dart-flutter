class Product {
  String name;
  double price;
  int stock;

  Product({required this.name,
          required this.price,
          required this.stock});

  void sell(int amount){
    if(amount <= stock){
      stock -= amount;
      print("$amount quatity of $name sold | current stock: $stock ");
    }else{
      print("Insufficient inventory, please restock");
    } 
  }

  void restock (int amount) {
    if(amount > 0) {
      stock += amount;
      print("$name restocked by $amount quantity");
    }else{
      print("Please enter a valid number");
    }
  }
}

void main(List<String> args) {
  Product rice = Product(name: "Rice", price: 45000, stock: 10);
  print("current ${rice.name} stock: ${rice.stock}");
  rice.sell(3);
  rice.restock(7);
  print("\n Total Inventory of ${rice.name}: ${rice.stock}");
}