void main(List<String> args) {
Map<String, double> products = {
  "Rice": 2000.0,
  "Beans": 679.0,
  "Garri": 540.0
};
products.forEach((key, value) => print("Market Gist: $key costs \$$value"));

}