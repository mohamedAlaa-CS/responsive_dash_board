import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        price: r'$20,129',
        isReceived: false),
    TransactionHistoryModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        price: r'$20,129',
        isReceived: true),
    TransactionHistoryModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        price: r'$20,129',
        isReceived: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionHistoryItem(model: e)).toList(),
    );
  }
}
