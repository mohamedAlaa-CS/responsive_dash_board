import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieCharData()));
  }

  PieChartData getPieCharData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            title: activeIndex == 0 ? 'Design service' : '40%',
            value: 40,
            color: const Color(0xff208CC8),
            titleStyle: AppStyles.styleRegular14.copyWith(
              color: activeIndex == 0 ? const Color(0xff064061) : Colors.white,
            ),
            showTitle: true,
            radius: activeIndex == 0 ? 40 : 30,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
            title: activeIndex == 1 ? 'Design product' : '25%',
            value: 25,
            color: const Color(0xff4EB7F2),
            titleStyle: AppStyles.styleRegular14.copyWith(
              color: activeIndex == 1 ? const Color(0xff064061) : Colors.white,
            ),
            showTitle: true,
            radius: activeIndex == 1 ? 40 : 30,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            value: 20,
            color: const Color(0xff064061),
            titleStyle: AppStyles.styleRegular14.copyWith(
              color: activeIndex == 2 ? const Color(0xff064061) : Colors.white,
            ),
            showTitle: true,
            radius: activeIndex == 2 ? 40 : 30,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
            title: activeIndex == 3 ? 'Product royalti' : '22%',
            titleStyle: AppStyles.styleRegular14.copyWith(
              color: activeIndex == 3 ? const Color(0xff064061) : Colors.white,
            ),
            value: 22,
            color: const Color(0xffE2DECD),
            showTitle: true,
            radius: activeIndex == 3 ? 40 : 30,
          ),
        ]);
  }
}
