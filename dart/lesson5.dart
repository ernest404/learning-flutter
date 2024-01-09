// Constant & Final variables
// Both are used to declare constants

import 'dart:js_util';

main() {
  //
  const pi = 3.14;
  print(pi);
  // pi = 3; error

  // The final keyword is used to declare a run-time constants. The value of a final variable is determined at runtime and can be assigned dynamically.

  final x = add(5, 10);
  print(x);
  // x = 5; error

  // const x = add(5, 10); not posible

// const is also used to create immutable instances of classes when the class constructor is marked as const.
// You cannot use const for non-constant values or values that are calculated at runtime.
}
