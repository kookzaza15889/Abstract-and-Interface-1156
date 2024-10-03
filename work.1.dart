//นายนนท์กฤช แซ่โค้ว 1156
import 'dart:math';
abstract class Shape {
  calculateArea();
}

abstract class Drawable {
  draw();
}

class Circle extends Shape implements Drawable {
  int radius;

  Circle(this.radius);

  calculateArea() {
    return pi * pow(radius, 2);
  }

  draw() {
    print("Drawing Circle with radius: $radius");
  }
}

class Rectangle extends Shape implements Drawable {
  int width, height;

  Rectangle(this.width, this.height);

  calculateArea() {
    return width * height;
  }

  @override
  draw() {
    print("Drawing Rectangle with width: $width and height: $height");
  }
}

void main(List<String> args) {
  var circle = Circle(5);
  circle.draw();
  print("Area of Circle: ${circle.calculateArea().toStringAsFixed(2)}");

  var rectangle = Rectangle(10, 20);
  rectangle.draw();
  print("Area of Rectangle: ${rectangle.calculateArea()}");
}


