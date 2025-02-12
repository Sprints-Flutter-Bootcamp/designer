import 'package:designer/singleton_pattern/singleton_class.dart';
import 'package:designer/widgets/my_app_bar.dart';
import 'package:designer/widgets/my_button.dart';
import 'package:flutter/material.dart';

class SingletonSample extends StatefulWidget {
  @override
  _SingletonSampleState createState() => _SingletonSampleState();
}

class _SingletonSampleState extends State<SingletonSample> {
  String message = "Click to check Singleton behavior";

  // void testSingleton() {
  //   Database db1 = Database.getInstance();
  //   Database db2 = Database.getInstance();

  //   setState(() {
  //     if (db1 == db2) {
  //       message = "Singleton works! Both instances are the same.";
  //     } else {
  //       message = "Singleton failed! Instances are different.";
  //     }
  //   });
  // }

  void testSingleton() {
    Client client = Client(); // Create Client instance
    setState(() {
      message = client.testSingleton(); // Use Client class for singleton test
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, "Singleton Pattern Example"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            myButton("Check Singleton", () {
              testSingleton();
            }),
          ],
        ),
      ),
    );
  }
}
