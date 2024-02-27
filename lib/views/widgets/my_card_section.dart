import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/dots_indecator.dart';
import 'package:responsive_dash_board/views/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20,
        ),
        SizedBox(height: 15),
        MyCardPageView(),
        SizedBox(height: 15),
        DotsIndecator()
      ],
    );
  }
}
