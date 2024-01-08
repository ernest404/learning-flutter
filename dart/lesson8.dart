// Functions

main() {
  // Function calls are made inside the main function
  // Functions can be defined inside or outside of the main function.

  print(square(5));
  print(squareArrow(5));

  var numbers = [10, 20, 30];
  //forEach loop is a higher order function, takes another function as a parameter.
  numbers.forEach((n) => print(n * 2));

  // Calling functions with named parameter
  print(sum(num1: 4, num2: 5));

  print(summ(4));
}

// Function definition

// returnType functionName(parameters) {
//   // function body
// }

// Functions can take parameters, and you have to specify their types.
// Functions return a value the return keyword is used if it is a concrete value from an expression, no return for effects such as print.
dynamic square(var num) {
  return num * num;
}

// Parameters can also have default values:
void showOutput([String msg = 'Hello']) {
  print(msg);
}

// Arrow function definition
// The  => syntax specifies the return type.
dynamic squareArrow(var num) => num * num;

// Anonymous functions
var show = (n) => print(n * 2);

var show2 = (n) {
  return n * 2;
};

// Function with named parameter
dynamic sum({var num1, var num2}) {
  return num1 + num2;
}

// Fuction with an option arguement

dynamic summ(var num1, {var num2 = 0}) {
  return num1 + num2;
}
