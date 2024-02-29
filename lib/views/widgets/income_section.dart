import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_backGround_widget.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [IncomeHeader(), Expanded(child: IncomeChart())],
      ),
    );
  }
}
