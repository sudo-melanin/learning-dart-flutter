void main(List<String> args) {
  List<Map<String, dynamic>> buddyList = [
    {
      "name": "Alice",
      "age": "25",
    },
    {
      "name": "Bob",
      "age": "thirty",
    },
      {
      "name": "Andrew",
      "age": "28",
    },
      {
      "name": "Sasha",
      "age": "32",
    },
      {
      "name": "Charlie",
      "age": null,
    }
  ];

  print("\n----------Processing buddy list-----------");

  for (var buddy in buddyList){
    try {
      int age = int.parse(buddy["age"]);
      print("\n${buddy["name"]} is $age years old.");
    }
      catch(e){
        print("\n${buddy["name"]} has an invalid age entry: ${buddy["age"]}");
      }
    }
}