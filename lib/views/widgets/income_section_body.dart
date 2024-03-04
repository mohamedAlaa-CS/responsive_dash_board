import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details_list_view.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    print(width);
    return width >= 1300 && width < 1400
        ? const SizedBox()
        : const Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: IncomeChart()),
                SizedBox(width: 20),
                Expanded(flex: 2, child: IncomeDetailsListView()),
              ],
            ),
          );
  }
}
