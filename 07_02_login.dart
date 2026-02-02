Future<String> loginUser(String username) async {
  print("loging in user: $username");
  await Future.delayed(Duration(seconds: 4));
  return "User $username logged in successfully";
}

void main(List<String> args) async{
  String message = await loginUser("Melanin Man");
  print(message);
  
}