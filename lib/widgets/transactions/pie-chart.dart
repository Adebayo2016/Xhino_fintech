import 'package:fintech/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class CustomPieChart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.3,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: Icon(Icons.credit_card),
                        ),
                        Text("**** 5566",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
                  PieChart(
                    PieChartData(
                        pieTouchData:
                            PieTouchData(touchCallback: (pieTouchResponse) {
                          setState(() {
                            final desiredTouch = pieTouchResponse.touchInput
                                    is! PointerExitEvent &&
                                pieTouchResponse.touchInput is! PointerUpEvent;
                            if (desiredTouch &&
                                pieTouchResponse.touchedSection != null) {
                              touchedIndex = pieTouchResponse
                                  .touchedSection.touchedSectionIndex;
                            } else {
                              touchedIndex = -1;
                            }
                          });
                        }),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 60,
                        sections: showingSections()),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 15.0 : 0.0011;
      final radius = isTouched ? 50.0 : 40.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: primaryColor,
            value: 65,
            title: '60%',
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: errorLight,
            value: 5,
            title: '15%',
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xff292D38)),
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: primaryLight,
            value: 20,
            title: '20%',
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xff292D38)),
            radius: radius,
          );

        default:
          throw Error();
      }
    });
  }
}
