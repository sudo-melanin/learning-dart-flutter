// parallelism with Future.wait and async/await

Future <String> fetchProducts() async {
  await Future.delayed(Duration(seconds: 3));
  return "Rice, Beans";
}

Future <String> fetchUserProfile() async{
  await Future.delayed(Duration(seconds: 2));
  return "Amos Melanin";
}

void main(List<String> args) async {
  print("Starting your app");
  Stopwatch stopwatch = Stopwatch()..start();         // Start measuring time

  var fetchedData = await Future.wait([               // Future.wait for parallel execution
    fetchProducts(),
    fetchUserProfile()
  ]);

  String products = fetchedData[0];
  String userProfile = fetchedData[1];
  print("Products: $products fetched for $userProfile");
  print("Time taken: ${stopwatch.elapsed.inSeconds} seconds");
}

// In this code:
// - Two asynchronous functions, fetchProducts and fetchUserProfile, simulate fetching data with delays.
// - In the main function, Future.wait is used to run both functions in parallel, reducing total wait time.
// - The total time taken is measured using Stopwatch, demonstrating the efficiency of parallel execution.
// - Finally, the fetched data is printed along with the time taken.
