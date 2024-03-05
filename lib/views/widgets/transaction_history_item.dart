import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.model});
  final TransactionHistoryModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          model.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          model.date,
          style:
              AppStyles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          model.price,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: model.isReceived
                ? const Color(0xff7DD97B)
                : const Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
