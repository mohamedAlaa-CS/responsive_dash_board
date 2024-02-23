import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isActive});
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: isActive
                ? const Color(0xffFFFFFF).withOpacity(.10)
                : const Color(0xffFAFAFA),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                isActive ? Colors.white : const Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: isActive ? Colors.white : const Color(0xff064061),
        )
      ],
    );
  }
}
