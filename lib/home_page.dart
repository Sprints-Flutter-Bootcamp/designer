import 'package:designer/builder_pattern/builder_sample.dart';
import 'package:designer/factory_pattern/shape_sample.dart';
import 'package:designer/singleton_pattern/singleton_sample.dart';
import 'package:designer/widgets/my_app_bar.dart';
import 'package:designer/widgets/my_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, "Patterns Designer"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Design Patterns",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue),
          ),
          const SizedBox(height: 20),
          myButton("Builder Pattern", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BuilderSample()));
          }),
          myButton("Factory Pattern", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShapeSample()));
          }),
          myButton("Singleton Pattern", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SingletonSample()));
          }),
        ],
      ),
    );
  }
}
