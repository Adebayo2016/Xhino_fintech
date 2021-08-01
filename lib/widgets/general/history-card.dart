import 'package:fintech/constants.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  final bool alt;
  HistoryCard({this.alt = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 45,
                  height: 45,
                  color: !alt ? primaryLight : errorLight,
                  child: Center(
                      child: Icon(
                    !alt
                        ? Icons.arrow_downward_outlined
                        : Icons.arrow_upward_outlined,
                    color: !alt ? primaryColor : errorColor,
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text("Withdrawal",
                          style: TextStyle(
                              color: Color(0xFF292D38),
                              fontSize: 14.3,
                              fontWeight: FontWeight.w600)),
                    ),
                    Text(
                      "21 Aug 21",
                      style: TextStyle(color: Color(0xFFB9D4F9), fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  !alt ? "\$300.43" : "- \$400.43",
                  style: TextStyle(
                      color: !alt ? primaryColor : errorColor, fontSize: 16),
                ),
              ),
            
            ],
          ),
        ],
      ),
    );
  }
}
