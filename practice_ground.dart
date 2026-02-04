
Future<void> downloadVideo() async {
  print("Download Starting......");
  await Future.delayed( Duration(seconds: 4));    // simulating a download delay
  print("Download Completed!");
}

Stream<String> marketNews() async*{
  print("Market News Started.....");
  List<String> news = [
    "Rice is up by 10%",
    "Oil prices are down by 5%",
    "Beans are up by 15%",
    "Maize is down by 8%",
  ];
  for (String item in news) {
    await Future.delayed(Duration(seconds: 1));
    yield item;
  }
}

void main(List<String> args) async{
  await downloadVideo();
  print("You can now watch the video offline.");

  print("\nFetching Market News:");
  await for (String news in marketNews()) {
    print(news);
  }
  print("\nAll market news fetched.");}