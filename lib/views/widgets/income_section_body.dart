import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details_list_view.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return width >= 1200 && width < 1400
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 20),
              Expanded(flex: 2, child: IncomeDetailsListView()),
            ],
          );
  }
}
