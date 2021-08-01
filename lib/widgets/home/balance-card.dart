import 'package:fintech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBalanceCard extends StatelessWidget {
  final bool alt;
  HomeBalanceCard({this.alt = false});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {},
        child: Container(
          color: !alt ? primaryColor : brownColor,
          padding: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(!alt
                    ? 'assets/images/wallet.svg'
                    : 'assets/images/wallet-brown.svg'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      !alt ? "MAIN BALANCE" : "MAIN CARD",
                      style: TextStyle(
                          color: !alt ? Color(0xFFB3C0D0) : Color(0xFFCFAD9B),
                          fontSize: 12.4),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 14),
                      child: Text(
                        !alt ? "\$4,000" : "**5677",
                        style: TextStyle(
                            color: !alt ? Colors.white : Color(0xFF8F4724),
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    !alt
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                                padding: EdgeInsets.all(4),
                                color: Color(0xFF82B4F4),
                                child: Text(
                                  '+2.3%',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )),
                          )
                        : SvgPicture.asset('assets/images/mastercard.svg')
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
