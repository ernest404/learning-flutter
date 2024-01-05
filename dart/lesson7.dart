// Loops

main() {
  // Basic  for loop

  // for (initialization; condition; increment/decrement) {
  //   loop body
  // }

  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  // for -in loop
  // Used iterate over elements in an iterable like list and set.

  // for (var item in iterable) {
  //   loop body
  // }

  var numbers = [1, 2, 3];

  for (var x in numbers) {
    print(x * 2);
  }

  //forEach loop: a higher order function, takes another function as a parameter.
  numbers = [10, 20, 30];
  numbers.forEach((n) => print(n * 2));

  // While loop:
  // repeats a block of code as long as a specified condition is true.
  var i = 1;
  while (i <= 5) {
    print(num);
    i++; //last expression changes the value to prevent infinite loop.
  }

  // do while loop
  // Similar to the while loop, but the condition is evaluated after the loop body, ensuring that the loop body is executed at least once.
  i = 4;
  do {
    print(num);
    i -= 1;
  } while (i > 2);

  // break and continue
  // The break statement is used to exit a loop prematurely.
  // The continue statement is used to skip the rest of the loop body and proceed to the next iteration.

  for (var x = 0; x < 10; x++) {
    if (x == 5) {
      continue; //If condition is met the rest of the body is not executed, the jumps to the next iteration.
    }
    print(x);
  }

  for (var x = 0; x < 10; x++) {
    if (x == 5) {
      break; //If condition is met the loop stops executing altogether.
    }
    print(x);
  }
}
