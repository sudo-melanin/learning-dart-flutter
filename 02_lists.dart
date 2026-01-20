void main(List<String> args) {

  // Define a list of shopping items
  List<String> shoppingList = ["Rice", "Beans", "Yam"];

  // Access and print each item in the list - indexing starts at 0
  print("Item at index 0: ${shoppingList[0]}");   // Output: Rice
  print("Item at index 1: ${shoppingList[1]}");   // Output: Beans 
  print("Item at index 2: ${shoppingList[2]}");   // Output: Yam

  // Adding a new item to the list
  shoppingList.add("Garri");
  print("\nNew Shopping List:  $shoppingList");        // Output: [Rice, Beans, Yam, Garri]

  // Removing an item from the list
  shoppingList.remove("Yam");
  print("After removing Yam: $shoppingList");        // Output: [Rice, Beans, Garri]

  print(shoppingList.length);                    // Output: 3 (length of the list)


  // There are other methods to manipulate lists such as insert, clear, sort, etc. - to be explored later.

}