import 'package:fintech/widgets/plan/card.dart';
import 'package:flutter/material.dart';

class PlanList extends StatelessWidget {

  
 const PlanList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25),
      children: [
        PlanCard(myPlanTitle: "Macbook",
        myplanSub: "N2500/N60000",),
        PlanCard(myPlanTitle: "Anti SAPA",
        myplanSub: "N20000",),
        PlanCard(myPlanTitle: "Samsung",
        myplanSub: "N2500/N60000",),
        PlanCard(myPlanTitle: "Generator",
        myplanSub: "60000",),
        PlanCard(myPlanTitle: "Land",
        myplanSub: "500000",),
        PlanCard(myPlanTitle: "CAR",
        myplanSub: "N400000",),
        PlanCard(myPlanTitle: "Babes",
        myplanSub: "none",),
        PlanCard(myPlanTitle: "Jaiye Jaiye",
        myplanSub: "N600000",),
        PlanCard(myPlanTitle: "Tourism",
        myplanSub: "N2000000",),
        PlanCard(myPlanTitle: "Macbook",
        myplanSub: "N2500/N60000",),
        PlanCard(myPlanTitle: "Macbook",
        myplanSub: "N2500/N60000",),
        PlanCard(myPlanTitle: "Macbook",
        myplanSub: "N2500/N60000",),
        PlanCard(myPlanTitle: "Macbook",
        myplanSub: "N2500/N60000",),
        PlanCard(myPlanTitle: "Macbook",
        myplanSub: "N2500/N60000",),
      
      ],
    );
  }
}
