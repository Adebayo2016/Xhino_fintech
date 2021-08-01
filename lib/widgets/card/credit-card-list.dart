import 'package:fintech/widgets/general/credit-card.dart';
import 'package:flutter/material.dart';

class CreditCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.35,
      margin: EdgeInsets.only(bottom: 25),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          CreditCard(),
          CreditCard(
            alt: true,
          ),
          CreditCard(),
          CreditCard(alt: true),
        ],
      ),
    );
  }
}
