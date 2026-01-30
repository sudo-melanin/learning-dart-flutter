void main(List<String> args) {
  DigitalProduct magazine = DigitalProduct("Eat that frog", 30, "www.eatthatfrog.com");
  print(magazine.name);
  print(magazine.downloadLink);
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);

}

class DigitalProduct extends Product {
  String downloadLink;
  DigitalProduct(String name, double price, this.downloadLink): super(name, price);

}