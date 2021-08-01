import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAds extends StatelessWidget {
  const HomeAds({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: SvgPicture.asset(
        'assets/images/save-ads.svg',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
