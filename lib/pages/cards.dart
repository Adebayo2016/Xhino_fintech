import 'package:fintech/widgets/card/credit-card-list.dart';
import 'package:fintech/widgets/card/history-list.dart';
import 'package:fintech/widgets/general/page-header.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageHeader(
            title: "Walexhino",
            subTitle: "Create new plan and save towards that big goal.",
          ),
          CreditCardList(),
          HistoryList()
        ],
      ),
    );
  }
}
