import 'package:flutter/material.dart';

// make refresh as optional
PreferredSizeWidget myAppBar(
  BuildContext context,
  String appBarTitle,
  // {VoidCallback onRefresh = () {}}
) {
  Color appbarBackgroundColor = Colors.blue;
  Color appbarIconColor = Colors.white;
  Color appbarTitleColor = Colors.white;
  return AppBar(
    iconTheme: IconThemeData(color: Colors.teal[900]),
    backgroundColor: appbarBackgroundColor,
    shadowColor: Colors.blueGrey,
    elevation: 1,
    centerTitle: true,
    title: Text(
      appBarTitle,
      style: TextStyle(color: appbarTitleColor),
    ),
    // actions: [
    //   IconButton(
    //     icon: Icon(Icons.refresh, color: appbarIconColor), // Refresh icon
    //     onPressed: onRefresh, // Call the refresh callback
    //   ),
    // ],
  );
}
