import 'package:fintech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlanCard extends StatelessWidget {

final String myPlanTitle;
  final String myplanSub;
  
  
  const PlanCard({@required this.myPlanTitle, @required this.myplanSub,


    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        color: primaryLight,
        padding: EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/images/wallet-circle.svg'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Text(myPlanTitle,
                        style: TextStyle(
                            color: header1Color,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                   (myplanSub),
                    style: TextStyle(fontSize: 12, color: Color(0xFFB9D4F9)),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: 0.4,
                  minHeight: 6,
                  backgroundColor: Color(0xFFB9D4F9),
                  valueColor: AlwaysStoppedAnimation(primaryColor),
                ),
              ),
            ]),
      ),
    );
  }
}
