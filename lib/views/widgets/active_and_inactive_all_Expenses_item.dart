import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_itwm_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: const Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            isActive: false,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24,
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            isActive: true,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
