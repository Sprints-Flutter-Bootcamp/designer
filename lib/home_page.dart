import 'package:designer/widgets/my_app_bar.dart';
import 'package:designer/widgets/my_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, "Users Management App"),
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
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const AddUserPage()));
          }),
          myButton("Factory Pattern", () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const UsersFirebase()));
          }),
          myButton("Singleton Pattern", () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const UsersAPI()));
          }),
        ],
      ),
    );
  }
}
