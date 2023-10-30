import 'package:coffee_app/constants/constants.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background.png"))),
      child: Padding(
        padding: EdgeInsets.only(left: padding, right: padding, top: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "assets/icons/menu.png",
                color: Colors.white,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                    text: const TextSpan(
                        text: "It's a Great ",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                        children: [
                      TextSpan(
                          text: "Day for \nCoffee",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white))
                    ]))
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
