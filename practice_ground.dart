
Future<void> downloadVideo() async {
  print("Download Starting......");
  await Future.delayed( Duration(seconds: 4));    // simulating a download delay
  print("Download Completed!");
}

void main(List<String> args) async{
  await downloadVideo();
  print("You can now watch the video offline.");
  }