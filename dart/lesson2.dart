// Variable declaration
void main() {
  // Variable declaration with type inference.
  // useful when the type is evident from the assigned value, and it helps to reduce redundancy in code.
  var firstName = 'Ernest';

  // Avoid var in cases where the type might not be obvious or when providing clear type information improves code readability.

  String lastName = 'Musyoki';

  print(firstName + ' ' + lastName);
}
