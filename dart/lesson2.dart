// Variable declaration
void main() {
  // Variable declaration with type inference.
  // useful when the type is evident from the assigned value, and it helps to
  //reduce redundancy in code.
  var firstName = 'Ernest';

  // Avoid var in cases where the type might not be obvious or when providing
  //clear type information improves code readability.

  String lastName = 'Musyoki';

  print(firstName + ' ' + lastName);
}
// Dart is statically typed meaning that variable types are determined at
//compile-time.Hence the data types of variables must be declared and be known
//during the development phase, and any type errors or mismatches are caught by
//the compiler before the program is run.
