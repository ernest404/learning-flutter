// Object-oriented programming

// Classes and Objects: In Dart, a class is a blueprint for creating objects.
//Objects are instances of classes and encapsulate data and behavior.
//Flutter uses classes extensively to represent widgets and other elements.

class Car {
  // Instance variables
  String? make; //Declare instance variable, initially null.
  String? model;

  // Static variable
  // Variable belonging to the class itself.
  static int year = 2024;

  // Static method
  // can only access and modify static variable
  static void changeYear(int newYear) {
    year = newYear;
  }

  // Constructor
  Car(this.make, this.model);

  //named constructor
  //Use a named constructor to implement multiple constructors for a class or to provide extra clarity.
  Car.Corolla() {
    this.make = "Toyota";
    this.model = "Corolla";
  }

  // Methods
  void drive() {
    print('The $make $model is driving.');
  }
}

// Inheritance: In Dart, classes can inherit properties and methods from other classes.
// keyword extends indicates inheritance.
class ElectricCar extends Car {
  int batteryLevel; //Additional field inroduced by ElectricCar class

  ElectricCar(String make, String model,
      this.batteryLevel) //This constructor initializes an ElectricCar object
      : super(make,
            model); // uses the super keyword to call the constructor of the superclass (Car).

  void recharge() {
    //Additional method introduced by ElectricCar class
    print('Recharging battery to 100%.');
  }
}

// Mixins: Dart uses mixins for code reuse when you want to avoid the complexity of a class hierarchy.
class Scooter {
  void start() {
    print('Scooter started.');
  }

  void stop() {
    print('Scooter stopped.');
  }
}

mixin Electric {
  int batteryLevel = 0;

  void recharge() {
    print('Recharging battery to 100%.');
    batteryLevel = 100;
  }
}

// Create an ElectricScooter class that extends Scooter and includes the Electric mixin
class ElectricScooter extends Scooter with Electric {
  // Additional methods and properties
  void checkBattery() {
    print('Battery level: $batteryLevel');
  }
}

// Interfaces: Dart does not have explicit interfaces, but every class defines an interface.
//This allows for the use of abstract classes to define a contract without implementing the
//full functionality. Flutter uses this for callbacks and other types that need to be implemented by classes.

abstract class Vehicle {
  void drive();
  void stop();
}

class Bike implements Vehicle {
  //A class can implement multiple interfaces, allowing objects of that class to be treated as instances of those interfaces.
  @override //Method overriding: a subclass can provide a specific implementation for a method that is already defined in its superclass
  void drive() {
    print('Bike is moving');
  }

  @override
  void stop() {
    print('Bike has stopped');
  }
}

void main() {
  // Instantiating a object
  Car myDaily = Car("Honda", "Fit");
  // can also be infered
  var myOffRoad = Car("Suzuki", "Jimney");
  // Instantiate using a named constructor
  var mostPopular = Car.Corolla();

  mostPopular.drive();

// Mixin
  // Create an instance of ElectricScooter
  var myScooter = ElectricScooter();

  // Access methods from Scooter class
  myScooter.start();
  myScooter.stop();

  myScooter.checkBattery();
  // Access methods from Electric mixin
  myScooter.recharge();
  myScooter.checkBattery();
}
