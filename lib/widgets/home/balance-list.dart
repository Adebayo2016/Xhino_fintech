import 'package:flutter/material.dart';

class BalanceList extends StatelessWidget {
  final List<Widget> children;

  BalanceList({@required this.children});

  @override
  Widget build(BuildContext context) {
    return GridView(
        primary: false,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.76,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
        ),
        children: children);
  }
}
