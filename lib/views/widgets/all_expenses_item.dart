import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_itwm_model.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});
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
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
        ],
      ),
    );
  }
}
