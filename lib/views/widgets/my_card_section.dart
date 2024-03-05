import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/dots_indecator.dart';
import 'package:responsive_dash_board/views/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController Controller;
  int curreenIndex = 0;
  @override
  void initState() {
    Controller = PageController();
    Controller.addListener(() {
      curreenIndex = Controller.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(height: 12),
        MyCardPageView(pageController: Controller),
        const SizedBox(height: 15),
        DotsIndecator(
          currentIndex: curreenIndex,
        )
      ],
    );
  }
}
