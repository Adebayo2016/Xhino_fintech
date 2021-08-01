import 'package:fintech/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 0),
      child: Column(
        children: [
          HomeBarChartHeading(),
          HomeBarChartSummary(),
          Container(
            height: 225,
            width: double.infinity,
            child: BarChart(
              BarChartData(
                  maxY: 17,
                  borderData: FlBorderData(show: false),
                  barTouchData:
                      BarTouchData(enabled: true, handleBuiltInTouches: true),
                  titlesData: buildFlTitlesData(),
                  barGroups: barGroups()),
              swapAnimationDuration: Duration(milliseconds: 150),
              swapAnimationCurve: Curves.linear,
            ),
          ),
        ],
      ),
    );
  }

  FlTitlesData buildFlTitlesData() {
    return FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        getTextStyles: (value) =>
            const TextStyle(color: Color(0xFF999999), fontSize: 13),
        margin: 16,
        getTitles: (double value) {
          switch (value.toInt()) {
            case 0:
              return 'Mon';
            case 1:
              return 'Tue';
            case 2:
              return 'Wed';
            case 3:
              return 'Thu';
            case 4:
              return 'Fri';
            case 5:
              return 'Sat';
            case 6:
              return 'Sun';
            default:
              return '';
          }
        },
      ),
      leftTitles: SideTitles(
        showTitles: false,
      ),
    );
  }

  List<BarChartGroupData> barGroups() {
    return [
      BarChartGroupData(x: 0, barRods: [
        BarChartRodData(
            colors: [primaryLight],
            width: 42,
            y: 6,
            borderRadius: BorderRadius.circular(6))
      ]),
      BarChartGroupData(x: 1, barRods: [
        BarChartRodData(
            colors: [primaryLight],
            width: 42,
            y: 12,
            borderRadius: BorderRadius.circular(6))
      ]),
      BarChartGroupData(x: 2, barRods: [
        BarChartRodData(
            colors: [primaryLight],
            width: 42,
            y: 8,
            borderRadius: BorderRadius.circular(6))
      ]),
      BarChartGroupData(x: 3, barRods: [
        BarChartRodData(
            colors: [primaryLight],
            width: 42,
            y: 12,
            borderRadius: BorderRadius.circular(6))
      ]),
      BarChartGroupData(x: 4, barRods: [
        BarChartRodData(
            colors: [primaryColor],
            width: 42,
            y: 15,
            borderRadius: BorderRadius.circular(6))
      ]),
      BarChartGroupData(x: 5, barRods: [
        BarChartRodData(
            colors: [primaryLight],
            width: 42,
            y: 12,
            borderRadius: BorderRadius.circular(6))
      ]),
      BarChartGroupData(x: 6, barRods: [
        BarChartRodData(
            colors: [primaryLight],
            width: 42,
            y: 7,
            borderRadius: BorderRadius.circular(6))
      ]),
    ];
  }
}

class HomeBarChartSummary extends StatelessWidget {
  const HomeBarChartSummary({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "This week",
                style: TextStyle(fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "+2.5%",
                  style: TextStyle(color: Color(0xFF219653), fontSize: 12),
                ),
              )
            ],
          ),
          Row(
            children: [
              HomeBarChartFilter(
                text: "Wk",
                active: true,
              ),
              HomeBarChartFilter(
                text: "Mn",
              ),
              HomeBarChartFilter(
                text: "Yr",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeBarChartFilter extends StatelessWidget {
  final bool active;
  final String text;
  HomeBarChartFilter({@required this.text, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
            color: active ? primaryColor : primaryLight,
            padding: EdgeInsets.all(4),
            child: Text(text,
                style: TextStyle(
                    fontSize: 12,
                    color: active ? Colors.white : Color(0xFF738AA9)))),
      ),
    );
  }
}

class HomeBarChartHeading extends StatelessWidget {
  const HomeBarChartHeading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Expenditure breakdown",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        Text(
          "+ \$23,400",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ],
    );
  }
}
