import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 15),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoice()),
        SizedBox(width: 15),
        Expanded(
            child: Column(
          children: [
            MyCardSectionAndTransactionHistorySection(),
            Expanded(child: IncomeSection())
          ],
        ))
      ],
    );
  }
}
