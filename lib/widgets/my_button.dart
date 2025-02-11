import 'package:flutter/material.dart';

Widget myButton(String buttonText, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        // backgroundColor: Colors.black,
        padding: const EdgeInsets.all(0),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Colors.blue,
            Colors.blueAccent
          ]), // Apply the gradient from AppColors
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          constraints: const BoxConstraints(minHeight: 50),
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
