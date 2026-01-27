void main(List<String> args) {
  List<double> currentPrices = [2000.0, 1500.0, 3000.0, 2500.0];

  var hikedPrices = currentPrices.map((price) => price + 500.0).toList();

  var filteredPrices = hikedPrices.where((price) => price > 2500.0).toList();

    print(filteredPrices);
  

  for (var price in hikedPrices) {
    print("New Prices after hike: ₦$price");
  }
}