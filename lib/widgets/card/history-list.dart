import 'package:fintech/widgets/general/history-card.dart';
import 'package:flutter/material.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          HistoryCard(
            alt: true,
          ),
          HistoryCard(),
          HistoryCard(),
          HistoryCard(
            alt: true,
          ),
          HistoryCard(),
          HistoryCard(
            alt: true,
          ),
        ],
      ),
    );
  }
}
