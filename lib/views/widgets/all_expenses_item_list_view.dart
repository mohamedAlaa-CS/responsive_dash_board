import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_itwm_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int selectedIndaex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndax(0);
            },
            child: AllExpensesItem(
              isSelected: selectedIndaex == 0,
              allExpensesItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndax(1);
            },
            child: AllExpensesItem(
              isSelected: selectedIndaex == 1,
              allExpensesItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndax(2);
            },
            child: AllExpensesItem(
              isSelected: selectedIndaex == 2,
              allExpensesItemModel: items[2],
            ),
          ),
        ),
      ],
    );

    Row(
      children: items.asMap().entries.map((e) {
        var index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndax(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                isSelected: selectedIndaex == index,
                allExpensesItemModel: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndax(int index) {
    setState(() {
      selectedIndaex = index;
    });
  }
}
