void main(List<String> args) {
  // you can create a list of maps, where each map represents a product with its details
  List<Map<String, dynamic>> products = [     // dynamic allows for different value types
    {
      "name": "Rice",
      "price": 4500.0,
      "quantity": 2,
    },
    {
      "name": "Beans",
      "price": 3700.0,
      "quantity": 1,
    },
    {
      "name": "Yam",
      "price": 2500.0,
      "quantity": 3,
    },
  ];
  // Printing the entire list of maps
  print("\nProducts List: $products");

  // Accessing details of the first product
  print("\nFirst Product Name: ${products[0]["name"]}");       
  print("First Product Price: ₦${products[0]["price"]}");       
  print("First Product Quantity: ${products[0]["quantity"]}");

  // Adding a new product to the list
  products.add({
    "name": "Garri",
    "price": 2000.0,
    "quantity": 5,
  });
  print("\nAfter adding Garri: $products");

  // Removing a product from the list (removing Beans)
  products.removeWhere((product) => product["name"] == "Beans");
  print("\nAfter removing Beans: $products");

  // Getting the number of products in the list
  print("\nNumber of Products: ${products.length}");

  // There are other methods to manipulate lists and maps - to be explored later.
}