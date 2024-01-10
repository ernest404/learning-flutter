// Encapsulation: Encapsulation is the bundling of data with the methods that operate on that data.
//It restricts direct access to some of an object's components, which is a fundamental part of the OOP concept.
//Dart uses private and public access levels, controlled using underscores (_) for private members.

// Private Variables
// Purpose we don't the program to use them directly outside the class.
// getters and setters are special methods used to access and modify the values of class fields (instance variables).

class MyClass {
  // Private variable
  // Data hidden from other classes, external classes can only interact with this variable/property through methods rather than altering variable values directly.
  int _myField = 0;
  // The methods used to access private variables are  called "getters" and "setters."
  // Getter for _myField
  // A method that allows you to retrieve the value of a private variable. It is named with the prefix get followed by the variable name

  // int get myField {
  //   return _myField;
  // }

  int get myField => _myField;

  // Setter for _myField
  // A method that allows you to modify or update the value of a private variable. It is named with the prefix set followed by the variable name.
  set myField(int value) {
    if (value >= 0) {
      _myField = value; //set operation
    } else {
      print("Value must be non-negative.");
    }
  }
}

void main() {
  // Create an instance of MyClass
  MyClass myObject = MyClass();

  // Use the setter to update the value of myField
  myObject.myField = 42;

  // Use the getter to retrieve the value of myField
  print("Value of myField: ${myObject.myField}");

  // Try to set a negative value using the setter (will print a message)
  myObject.myField = -5;
}
