import 'package:fintech/constants.dart';
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final String title;
  final String subTitle;

  PageHeader({@required this.title, @required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              title,
              style: TextStyle(
                  color: header1Color,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.75,
            child: Text(
              subTitle,
              style: TextStyle(color: Color(0xFF666666)),
            ),
          ),
        ],
      ),
    );
  }
}
