// Collection types

void main() {
  // List
  // Lists in Dart are zero-indexed, and you can access elements using their indices.
  List<String> cities = [
    'Nairobi',
    'Japan',
    'Tokyo'
  ]; //cities is constrained to String elements

  // empty list
  var emptyList = [];
  print(emptyList);

  // a List can store data of different types if it is declared with the dynamic type or if no type is specified.
  List<dynamic> mixedList = [1, 'Hello', true, 3.14];
  print(mixedList[3]);
  var anotherMixedList = [1, 'Hello', true, 3.14];
  print(anotherMixedList[2]);
  //You can make lists immutable by adding const keyword
  List<String> citiesConst = const ['Nairobi', 'Japan', 'Tokyo'];

  //lists are mutable you modify their contents by adding, removing, or updating elements.
  cities[0] = 'Mombasa';
  cities.add('Kampala');
  cities.addAll(citiesConst);
  cities.removeAt(3);
  cities.remove('Nairobi');
  cities.removeLast();
  // cities.clear(); //Removes all elements from the list.
  cities.sort();
  cities.forEach(
      (city) => print(city)); //Applies a function to each element in the list.

  //Zero indexed
  print(cities[0]);

  print(cities.length); //get size of List.
  //  Access all elements using for in loop

  // Making copies of lists
  var newcities = cities; //newcities references cities items
  print(newcities);

  var realNewCities = [...cities];
  //Creates a completely new list of cities with the existing elements from cities.
  // the spread operator (...) adds elements from one list to another creating a completely new list with the elements of an existing list
  print(realNewCities);

  //=================================================================================================================================================

  // SET: An unordered collection of unique elements. Sets do not allow duplicate values.

  var halogens = {'fluorine', 'chlorine'};

  // Adding Elements
  halogens.add('iodine');
  halogens.remove('iodine');

  var emptySet =
      <String>{}; //empty set, you have to specify what it is supposed to hold

  print(emptySet.runtimeType);

  //=================================================================================================================================================

  // MAP: collection of key-value pair
  // Similar to dictionaries or associative arrays in other languages
  var gifts = {1: "car", 2: "Bike", 3: "Voucher"};

  // Accessing values
  print(gifts[2]);

  // Adding Elements
  gifts[5] = "Standing Table";

  // Updating Elements
  gifts[1] = 'Vehicle';

  var emptyMap = Map(); //empty map
  emptyMap[1] = "car"; //Add item to Map

  // Iterating Over a Map:
  for (var gift in gifts.entries) {
    print('${gift.key}: ${gift.value}');
  }

  // Immutable Maps
  const Map<String, String> constantMap = {'one': 'uno', 'two': 'dos'};

  // Type Conversion
  Set<String> giftSet = gifts.values.toSet();
  List<String> giftList = gifts.values.toList();
}
