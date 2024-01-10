// Polymorphism: Polymorphism allows objects to be treated as instances of their parent class rather than their actual class.
//This leads to flexibility and the ability to call the same method on different objects and have each of them respond
//in their own way.

// Metaphor: Polymorphism in programming can be likened to a versatile actor on a stage who can seamlessly take on different roles
// in various plays. Just as this actor adapts to different characters and scripts, polymorphic objects in code can gracefully
//assume different forms, allowing the software to perform varied tasks with a unified interface.

class Animal {
  void makeSound() {
    print('The animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('The dog barks');
  }

  void fetch() {
    print('Fetching the ball.');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('The cat meows');
  }

  void climbTree() {
    print('Climbing the tree.');
  }
}

void main() {
  // Polymorphism in action: myDog, myCat are treated as instances of the parent class Animal
  Animal genericAnimal = Animal();
  Animal myDog = Dog();
  Animal myCat = Cat();

  // Call the makeSound method of different objects
  genericAnimal.makeSound(); // Output: The animal makes a sound'
  myDog.makeSound(); // Output: The dog barks
  myCat.makeSound(); // Output: The cat meows

  // Uncommenting the following line will result in an error, as fetch is not a method in the Animal class.
  // myDog.fetch();

  // Type casting to the subclasses allows you to Access specific methods of the subclasses
  (myDog as Dog).fetch(); // Output: Fetching the ball.
  (myCat as Cat).climbTree(); // Output: Climbing the tree.
}
