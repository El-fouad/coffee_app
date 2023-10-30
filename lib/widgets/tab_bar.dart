import 'package:coffee_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  final tabs = ["Hot Coffee", "Cold Coffee", "Others"];
  var selectedTab = "Hot Coffee";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: tabs
          .map((e) => GestureDetector(
              onTap: () => setState(() {
                    selectedTab = e;
                  }),
              child: Text(
                e,
                style: e == selectedTab ? boldStyle() : normalStyle(),
              )))
          .toList(),
    );
  }

  TextStyle boldStyle() {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w900);
  }

  TextStyle normalStyle() {
    return TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: greyColor);
  }
}
