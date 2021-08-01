import 'package:fintech/widgets/home/ads.dart';
import 'package:fintech/widgets/home/balance-card.dart';
import 'package:fintech/widgets/home/balance-list.dart';
import 'package:fintech/widgets/home/bar-chart.dart';
import 'package:fintech/widgets/home/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HomeHeader(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                BalanceList(children: [
                  HomeBalanceCard(),
                  HomeBalanceCard(
                    alt: true,
                  )
                ]),
                HomeBarChart(),
                HomeAds(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
