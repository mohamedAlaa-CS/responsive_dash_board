import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.model});
  final IncomeDetailsModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 0,
      minVerticalPadding: 0,
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: model.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        model.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        model.presentage,
        style: AppStyles.styleMedium16.copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
