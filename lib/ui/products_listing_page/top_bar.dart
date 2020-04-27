import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
          color: Color(0xFFE0E0E0),
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
      child: TextField(
        style: TextStyle(fontSize: 16, color: Colors.black),
        decoration: InputDecoration(
          //To remove the line below the container
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.grey, size: 16),
          hintText: "Search Google Products",
          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
