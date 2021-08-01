import 'package:fintech/widgets/general/page-header.dart';
import 'package:fintech/widgets/plan/plan-list.dart';
import 'package:flutter/material.dart';

class PlansScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageHeader(
            title: "Saving plans",
            subTitle: "Create new plan and save towards that big goal.",
          ),
          PlanList()
        ],
      ),
    );
  }
}
