// Types

/*
The basic types include:
int
double
String
bool
dynamic: Type changes at runtime
 */

main() {
  int amount1 = 100;
  print(amount1);

  double amount2 = 3.14;
  print(amount2);

// Variables can be reassigned to other values of the same type.
  amount2 = 3.10;
  print(amount2);

  var name1 = "Ernest";
  print(name1);

  name1 = 'Musyoki';
  print(name1);

  bool boolean1 = true;
  bool boolean2 = false;
//$ : String interpolation allows you to embed expressions within string
//literals, making it easier to create dynamic strings.
  print('$boolean1 or $boolean2');

// Dart allows you to use dynamic to create variables that can hold values of
//any type and can have their type checked at runtime.
  dynamic adaptiveVariable = 100;
  print(adaptiveVariable);

  adaptiveVariable = "Ernest";
  print(adaptiveVariable);

  // For String use either double or single quotes.
  print('Print Two new lines \n\n');
  // To display special characters in string use raw string:
  print(r'Print Two new lines \n\n');

  // Type conversion
  // Dart provides methods like int.parse() and double.parse() to convert
  //strings to integers and doubles, respectively.
  var one = int.parse('1');
  assert(one == 1);

  var pointOne = double.parse('0.1');
  assert(pointOne == 0.1);

  // If the string is not a valid number, a FormatException is thrown.
  //To handle this, you can use the tryParse() method, which returns null if the
  //conversion fails.
  var stringValue = 'abc';
  var intValue = int.tryParse(stringValue);

  //Assert: allows you to assert that a given boolean expression is true at a
  //particular point in your code. If the expression is false, the assert
  //statement throws an AssertionError.

// Number to String Conversion:
  var stringOne = one.toString();
  assert(stringOne == '1');

// Explicit conversion using toInt()
  var doubleValue = 42.0;
  intValue = doubleValue.toInt();
  assert(intValue == 42);
}
