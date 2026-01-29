late String storeName;
double calculateHike (double price, double rate) => price + (price * rate);

void main(List<String> args) {
  
  try {
    print("Welcome to $storeName");
  } on Error {
    storeName = "Market Gist";
    print("------- Welcome to $storeName-------");
  }

  Map<String, double> inventory = {
    "Rice": 7500.0,
    "Beans": 1200.0,
    "Garri": 750.0,
    "Yam": 1700.0
  };

  double budget = 5000.0;
  double? flashSaleDiscount;

  print("Your budget is $budget");

  inventory.forEach((item, price) {

    print("\n$item: $price");
    double hikedPrice = calculateHike(price, 0.10);
    double discount = flashSaleDiscount ?? 0.0;
    double finalPrice = hikedPrice - (hikedPrice * discount);

    if (price < budget){
      print("Affordable: $item");
      print("final Price: ${finalPrice.toStringAsFixed(2)}");
    }else{
      print("$item is too costly for ${price.toStringAsFixed(2)}");
    }
    print("-" * 30);
    });



}