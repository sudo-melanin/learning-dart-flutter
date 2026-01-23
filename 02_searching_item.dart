void main(List<String> args) {
  List<Map<String, dynamic>> buddyList = [
    {
      "name": "Alice",
      "age": 25,
    },
    {
      "name": "Bob",
      "age": 32,
    },
      {
      "name": "Andrew",
      "age": 28,
    },
      {
      "name": "Sasha",
      "age": 32,
    },
      {
      "name": "Charlie",
      "age": 27,
    }
  ];

  var over27 = buddyList.where((buddy) => buddy["age"] > 27);
  print("\nBuddies over 27 years old: ${over27}.toList()");
  var nameOfOver27 = over27.toList();
  print("\nNames of buddies over 27 years old:");
  for (var buddy in nameOfOver27) {
    print(buddy["name"]);
  }
}