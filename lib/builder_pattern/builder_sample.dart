import 'package:designer/builder_pattern/user_class.dart';
import 'package:designer/widgets/my_button.dart';
import 'package:designer/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class BuilderSample extends StatefulWidget {
  @override
  _BuilderSampleState createState() => _BuilderSampleState();
}

class _BuilderSampleState extends State<BuilderSample> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  User? user;

  void createUser() {
    try {
      UserBuilder userBuilder = UserBuilder()
          .setFirstName(_firstNameController.text)
          .setLastName(_lastNameController.text);

      if (_ageController.text.isNotEmpty) {
        userBuilder.setAge(int.parse(_ageController.text));
      }
      if (_phoneController.text.isNotEmpty) {
        userBuilder.setPhone(_phoneController.text);
      }

      setState(() {
        user = userBuilder.build();
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User Created Successfully!")),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Builder Design Pattern Example")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyTextField(
              controller: _firstNameController,
              label: "First Name",
              labelIcon: Icons.person,
            ),
            MyTextField(
              controller: _lastNameController,
              label: "last Name",
              labelIcon: Icons.person_2,
            ),
            MyTextField(
              controller: _ageController,
              label: "Age",
              labelIcon: Icons.cake,
            ),
            MyTextField(
              controller: _phoneController,
              label: "Phone",
              labelIcon: Icons.phone,
            ),
            SizedBox(height: 20),
            myButton(
              "Create User",
              createUser,
            ),
            SizedBox(height: 20),
            if (user != null)
              Text(
                "User Created: \n${user!.firstName} ${user!.lastName}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
