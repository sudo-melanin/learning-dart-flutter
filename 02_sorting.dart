void main(List<String> args) {
  // Here, we'll demonstrate the .sort() and .take() and comparedTo methods in dart.

  List<Map<String, dynamic>> buddy = [
    {"name": "user1", "distance": 5.2},
    {"name": "user2", "distance": 3.8},
    {"name": "user3", "distance": 7.1},
    {"name": "user4", "distance": 2.4},
    {"name": "user5", "distance": 4.6},
  ];

  
  // Sorting buddies by distance
  buddy.sort((a, b) => a["distance"].compareTo(b["distance"]));
  print("Buddies sorted by distance:"); 

  for (var buddy in buddy){
    print("${buddy["name"]}: ${buddy["distance"]} km");
  }

  // Taking the closest 3 buddies
  var closestBuddies = buddy.take(3).toList();    // Take the first 3 elements after sorting
  print("\nClosest 3 buddies:");
  for (var buddy in closestBuddies){
    print("${buddy["name"]}: ${buddy["distance"]} km");
  }
}