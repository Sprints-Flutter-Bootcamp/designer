abstract class Shape {
  String revealMe();
}

class Circle implements Shape {
  @override
  String revealMe() {
    print("You chose to print Circle");
    return "You chose to print Circle";
  }
}

class Rectangle implements Shape {
  @override
  String revealMe() {
    print("You chose to print Rectangle");
    return "You chose to print Rectangle";
  }
}

class Square implements Shape {
  @override
  String revealMe() {
    print("You chose to print Square");
    return "You chose to print Square";
  }
}

class ShapeFactory {
  static Shape getShape(String shapeType) {
    switch (shapeType.toLowerCase()) {
      case "circle":
        return Circle();
      case "square":
        return Square();
      case "rectangle":
        return Rectangle();
      default:
        throw Exception("Invalid shape type");
    }
  }
}
