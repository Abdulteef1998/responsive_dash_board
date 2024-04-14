import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class InComeChart extends StatefulWidget {
  const InComeChart({super.key});

  @override
  State<InComeChart> createState() => _InComeChartState();
}

class _InComeChartState extends State<InComeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, PieTouchResponse) {
              activeIndex =
                  PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            }),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            value: 40,
            radius: activeIndex == 0 ? 60 : 50,
            color: Color(0xFF208BC7),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 25,
            radius: activeIndex == 1 ? 60 : 50,
            color: Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 20,
            radius: activeIndex == 2 ? 60 : 50,
            color: Color(0xFF064060),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 22,
            radius: activeIndex == 3 ? 60 : 50,
            color: Color(0xFFE2DECD),
          ),
        ]);
  }
}
