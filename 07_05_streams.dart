Stream<int> timerCounter (int seconds) async* {
  for (int i = 1; i <= seconds; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main(List<String> args) async {
  print("Timer Started:");
  await for (int secs in timerCounter(10)){
    print("Counting: $secs seconds");
  }
  print("\nTimer Ended.");
}