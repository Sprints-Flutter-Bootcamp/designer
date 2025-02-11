import 'package:designer/factory_pattern/shape_factory.dart';
import 'package:designer/widgets/my_button.dart';
import 'package:flutter/material.dart';

class ShapeSample extends StatefulWidget {
  @override
  _ShapeSampleState createState() => _ShapeSampleState();
}

class _ShapeSampleState extends State<ShapeSample> {
  String message = "Select a shape to reveal its message!";

  void generateShape(String shapeType) {
    try {
      Shape shape = ShapeFactory.getShape(shapeType);
      setState(() {
        message = shape.revealMe();
      });
    } catch (e) {
      setState(() {
        message = "Invalid shape selected";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Factory Pattern Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            myButton("Circle", () {
              generateShape("circle");
            }),
            myButton("Square", () {
              generateShape("square");
            }),
            myButton("Rectangle", () {
              generateShape("rectangle");
            }),
          ],
        ),
      ),
    );
  }
}
