import 'package:fintech/constants.dart';
import 'package:fintech/widgets/general/input.dart';
import 'package:fintech/widgets/home/dot.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 40,
              height: 40,
              color: primaryLight,
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: CustomInput(),
          )),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 40,
                  height: 40,
                  color: primaryLight,
                  child: Image.asset(
                    'assets/images/mypics.jpg',
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              Positioned(bottom: 0, left: 0, child: Dot())
            ],
          ),
        ],
      ),
    );
  }
}
