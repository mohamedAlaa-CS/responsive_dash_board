import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 15),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(height: 6),
        const TransactionHistoryListView()
      ],
    );
  }
}
