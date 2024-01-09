// Object-oriented programming (OOP) is a programming paradigm based on the concept of "objects,"
//which can contain data in the form of fields (often known as attributes or properties) and code
//in the form of methods (functions or procedures). Dart is an object-oriented language,
//which makes it a natural fit for developing Flutter applications. Here are some of the
//most important OOP concepts in Dart that apply to Flutter development:

// Classes and Objects: In Dart, a class is a blueprint for creating objects.
//Objects are instances of classes and can represent real-world entities.
//Flutter uses classes extensively to represent widgets and other elements.

class Car {
  String make;
  String model;

  Car(this.make, this.model);

  void drive() {
    print('The $make $model is driving.');
  }
}
// Inheritance: In Dart, classes can inherit properties and methods from other classes. This is useful in Flutter for creating custom widgets that share common functionality with base widgets.

class ElectricCar extends Car {
  int batteryLevel;

  ElectricCar(String make, String model, this.batteryLevel)
      : super(make, model);

  void recharge() {
    print('Recharging battery to 100%.');
  }
}
// Mixins: Dart uses mixins for code reuse when you want to avoid the complexity of a class hierarchy. This is useful in Flutter for adding features to widgets without creating long inheritance chains.

mixin Electric {
  int batteryLevel;

  void recharge() {
    print('Recharging battery to 100%.');
  }
}

class ElectricScooter extends Scooter with Electric {
  // Additional methods and properties
}
// Interfaces: Dart does not have explicit interfaces, but every class defines an interface. This allows for the use of abstract classes to define a contract without implementing the full functionality. Flutter uses this for callbacks and other types that need to be implemented by classes.

abstract class Vehicle {
  void drive();
  void stop();
}

class Bike implements Vehicle {
  @override
  void drive() {
    print('Bike is moving');
  }

  @override
  void stop() {
    print('Bike has stopped');
  }
}
// Encapsulation: Encapsulation is the bundling of data with the methods that operate on that data. It restricts direct access to some of an object's components, which is a fundamental part of the OOP concept. Dart uses private and public access levels, controlled using underscores (_) for private members.

class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    _balance += amount;
  }

  double get balance => _balance;
}
// Polymorphism: Polymorphism allows objects to be treated as instances of their parent class rather than their actual class. This leads to flexibility and the ability to call the same method on different objects and have each of them respond in their own way. Flutter utilizes polymorphism to handle events and interactions in a generic way.

class Animal {
  void speak() {
    print('The animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print('The dog barks');
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print('The cat meows');
  }
}
// Constructors: Constructors are special methods of a class that get called when a new instance of the class is created. Dart provides various types of constructors including default, named, constant and factory constructors which can be used to initialize variables, constraints, or to return instances of a class. This is frequently used in Flutter to initialize widgets with different configurations.

class Widget {
  String name;

  Widget(this.name);

  Widget.hidden() {
    name = 'hidden widget';
  }
}
// These OOP principles allow Flutter to be flexible and powerful, creating a widget hierarchy and reusing code efficiently. Understanding OOP in Dart is crucial for mastering Flutter app development.
