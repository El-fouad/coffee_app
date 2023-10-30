import 'package:coffee_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var color = greyColor.withOpacity(0.8);
    return TextField(
      cursorColor: greyColor,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: color)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: color)),
          prefixIcon: Icon(Icons.search, color: color),
          hintStyle: TextStyle(color: color, fontSize: 14),
          hintText: "Search your coffee"),
    );
  }
}
