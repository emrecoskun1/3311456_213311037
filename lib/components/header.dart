import 'package:flutter/material.dart';

Widget header(String title, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 30),

      //backButton
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
      ),

      SizedBox(height: 15),

      Text(title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
    ],
  );
}
