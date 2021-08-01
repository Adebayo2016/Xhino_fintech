import 'package:fintech/widgets/card/history-list.dart';
import 'package:fintech/widgets/transactions/pie-chart.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 20),
            child: Row(
              children: [
                Icon(
                  Icons.chevron_left_outlined,
                  size: 28,
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    "Card Transactions",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomPieChart(),
                  HistoryList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
