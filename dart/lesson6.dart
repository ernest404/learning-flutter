class Num {
  int num = 10;
}

class Person {
  String name = '';
  int age = 0;
}

main() {
  // Arithmetic Operators:

  // + (Addition)
  // - (Subtraction)
  // * (Multiplication)
  // / (Division)
  // % (Modulus)
  int a = 10;
  int b = 5;

  print(a + b); // Output: 15
  print(a - b); // Output: 5
  print(a * b); // Output: 50
  print(a / b); // Output: 2.0
  print(a % b); // Output: 0

  // Comparison Operators:

  // == (Equal to)
  // != (Not equal to)
  // < (Less than)
  // > (Greater than)
  // <= (Less than or equal to)
  // >= (Greater than or equal to)

  int x = 10;
  int y = 5;

  print(x == y); // Output: false
  print(x != y); // Output: true
  print(x < y); // Output: false
  print(x > y); // Output: true
  print(x <= y); // Output: false
  print(x >= y); // Output: true

  // Type Test Operators:

  // as (Typecast)
  // is (True if the object has the specified type)
  // is! (False if the object has the specified type)

  var value = 42;

  if (value is int) {
    print('value is an integer.');
  } else {
    print('value is not an integer.');
  }

  // Logical Operators:

  // && (Logical AND)
  // || (Logical OR)
  // ! (Logical NOT)

  print(true && false); // Output: false
  print(true || false); // Output: true
  print(!true); // Output: false

  // Assignment Operators:

  // = (Assignment)
  // += (Addition assignment)
  // -= (Subtraction assignment)
  // *= (Multiplication assignment)
  // /= (Division assignment)
  // %= (Modulus assignment)
  // ~/= (Truncate division assignment)
  // <<= (Left shift assignment)
  // >>= (Right shift assignment)
  // &= (Bitwise AND assignment)
  // |= (Bitwise OR assignment)
  // ^= (Bitwise XOR assignment)
  a = 10;
  double c = 16;

  a += 5; // Equivalent to a = a + 5;
  a -= 3; // Equivalent to a = a - 3;
  a *= 2; // Equivalent to a = a * 2;
  c /= 4; // Equivalent to c = c1 / 4;
  a %= 3; // Equivalent to a = a % 3;

  // Conditional Operator:

  // condition ? expr1 : expr2 (If condition is true, evaluates expr1; otherwise, evaluates expr2)
  int result = (a > b) ? a : b;
  print(result); // Output: 10

  // Cascade Notation (..)
  // Allows you to perform a sequence of operations on the same object.

  var person = Person()
    ..name = 'John'
    ..age = 30;

  print(person.name); // Output: John
  print(person.age); // Output: 30

  // Null-aware Operators:

  // ?? (If the expression on the left is non-null, it returns that value; otherwise, it evaluates the expression on the right and returns its result)
  // ??= (Assign the value only if the variable is currently null)

  int? nullableValue; // Nullable variable
  int result2 = nullableValue ?? 10;
  print(result2); // Output: 10

  nullableValue ??= 5;
  print(nullableValue); // Output: 5
}
