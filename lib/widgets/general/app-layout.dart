import 'package:fintech/constants.dart';
import 'package:fintech/pages/cards.dart';
import 'package:fintech/pages/home.dart';
import 'package:fintech/pages/plans.dart';
import 'package:fintech/pages/transaction.dart';
import 'package:fintech/widgets/general/bottom-nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TabLayout extends StatefulWidget {
  @override
  _TabLayoutState createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  int currentIndex = 0;

  onChange(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> tabWidgets = [
    HomeScreen(),
    PlansScreen(),
    CardsScreen(),
    TransactionScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double horPadding = size.width * 0.06;

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primaryColor));

    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNav(
          currentIndex: currentIndex,
          onTap: onChange,
        ),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(left: horPadding, right: horPadding),
              width: double.infinity,
              height: size.height,
              child: tabWidgets.elementAt(currentIndex)),
        ));
  }
}
