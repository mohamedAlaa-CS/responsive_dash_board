import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_backGround_widget.dart';
import 'package:responsive_dash_board/views/widgets/latest_transation_widget.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
        pading: 24,
        child: Column(
          children: [
            QuickInvoiceHeader(),
            LatestTransactionWidget(),
          ],
        ));
  }
}
