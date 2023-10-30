import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key, required this.coffee});
  final Coffee coffee;
  @override
  Widget build(BuildContext context) {
    var cardHeight = 120.0;
    return SizedBox(
      height: cardHeight,
      child: Row(children: [
        getImg(cardHeight),
        coffeeDetails(),
        Spacer(),
        plusIcon()
      ]),
    );
  }

  Container plusIcon() {
    return Container(
        height: 25,
        width: 25,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: orangeColor, borderRadius: BorderRadius.circular(5)),
        child: Image.asset(
          "assets/icons/plus.png",
          color: Colors.white,
        ),
      );
  }

  Padding coffeeDetails() {
    return Padding(
      padding: EdgeInsets.only(top: 16, left: padding, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          boldTitle(coffee.name),
          Spacer(),
          Text(
            coffee.smallDescription,
            style: TextStyle(
                fontSize: 16, color: greyColor, fontWeight: FontWeight.w500),
          ),
          Spacer(
            flex: 5,
          ),
          boldTitle(coffee.price),
        ],
      ),
    );
  }

  Text boldTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
    );
  }

  Container getImg(double cardHeight) {
    return Container(
      height: cardHeight,
      width: cardHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(coffee.image), fit: BoxFit.cover)),
    );
  }
}
