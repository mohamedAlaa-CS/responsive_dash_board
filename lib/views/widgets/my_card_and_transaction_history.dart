import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_backGround_widget.dart';
import 'package:responsive_dash_board/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history.dart';

class MyCardSectionAndTransactionHistorySection extends StatelessWidget {
  const MyCardSectionAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          color: Color(0xffF1F1F1),
        ),
        TransactionHistory(),
      ],
    ));
  }
}
