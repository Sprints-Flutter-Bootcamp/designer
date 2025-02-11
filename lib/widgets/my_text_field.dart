import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final IconData labelIcon;
  final String? Function(String?)? validator;
  final bool isPassword;
  bool obsecureText;

  MyTextField(
      {super.key,
      required this.controller,
      required this.label,
      required this.labelIcon,
      this.obsecureText = false,
      this.validator,
      this.isPassword = false});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  IconData? suffixIcon = Icons.visibility_off_outlined;

  void switchVisibility() {
    widget.obsecureText = !widget.obsecureText;
    suffixIcon = widget.obsecureText
        ? Icons.visibility_off_outlined
        : Icons.visibility_outlined;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color myFocusColor = Colors.blueAccent;
    Color myIconColor = Colors.lightBlueAccent;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? InkWell(
                  child: Icon(suffixIcon),
                  onTap: () => switchVisibility(),
                )
              : null,
          labelText: widget.label,
          hintText: 'Enter your ${widget.label.toLowerCase()}',
          focusColor: myFocusColor,
          prefixIcon: Icon(
            widget.labelIcon,
            color: myIconColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: myFocusColor,
            ),
          ),
        ),
        obscureText: widget.obsecureText,
        validator: widget.validator,
      ),
    );
  }
}
