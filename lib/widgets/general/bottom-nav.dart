import 'package:fintech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function onTap;
  BottomNav({@required this.currentIndex, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 0,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (int index) {
        onTap(index);
      },
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/home.svg',
              color: currentIndex == 0 ? primaryColor : null,
            ),
            tooltip: "Home",
            label: "Home"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/card.svg',
              color: currentIndex == 1 ? primaryColor : null,
            ),
            label: "Plans"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/graph.svg',
              color: currentIndex == 2 ? primaryColor : null,
            ),
            label: "History"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/category.svg',
              color: currentIndex == 3 ? primaryColor : null,
            ),
            label: "Settings"),
      ],
    );
  }
}
