// abstract class
//  an abstract class is a class that cannot be instantiated directly.
// It serves as a blueprint for other classes, and it may contain abstract methods,
// which Subclasses that extend an abstract class must provide implementations for.

abstract class Shape {
  // Abstract method (no implementation)
  void draw();

  // Regular (concrete) method
  void displayArea() {
    print("Area calculation not implemented.");
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  // Implementation of the abstract method 'draw'
  void draw() {
    print("Drawing a circle.");
  }

  // Overriding the regular method 'displayArea'
  void displayArea() {
    double area = 3.14 * radius * radius;
    print("Circle area: $area square units");
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  // Implementation of the abstract method 'draw'
  void draw() {
    print("Drawing a rectangle.");
  }

  // Overriding the regular method 'displayArea'
  void displayArea() {
    double area = length * width;
    print("Rectangle area: $area square units");
  }
}

void main() {
  // Uncommenting the following line will result in an error,
  // as you cannot instantiate an abstract class directly.
  // Shape shape = Shape();

  Circle circle = Circle(5);
  circle.draw();
  circle.displayArea();

  Rectangle rectangle = Rectangle(4, 6);
  rectangle.draw();
  rectangle.displayArea();
}
