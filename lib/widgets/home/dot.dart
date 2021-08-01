import 'package:fintech/constants.dart';
import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(1.9),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 15,
            height: 15,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
