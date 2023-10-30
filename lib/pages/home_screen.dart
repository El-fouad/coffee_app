import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/widgets/AppBarWidget.dart';
import 'package:coffee_app/widgets/coffee_card.dart';
import 'package:coffee_app/widgets/custom_search_bar.dart';
import 'package:coffee_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var appBarSize = size.height / 3;
    return Scaffold(
      body: Stack(clipBehavior: Clip.none, children: [
        SizedBox(
          height: size.height,
        ),
        AppBarWidget(
          height: appBarSize,
        ),
        Positioned(
            top: appBarSize - 25,
            child: Container(
              padding: EdgeInsets.all(padding),
              height: size.height - appBarSize + 25,
              width: size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                        const Column(
                          children: [
                            CustomTabBar(),
                            SizedBox(
                              height: 16,
                            ),
                            CustomSearchBar(),
                          ],
                        ),
                      ] +
                      coffees.map((e) => CoffeeCard(coffee: e)).toList()),
            ))
      ]),
    );
  }
}
