import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Color(0xffFAFAFA),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(image),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xff064061),
        )
      ],
    );
  }
}
