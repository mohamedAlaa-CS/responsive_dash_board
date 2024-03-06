import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.ontap,
    this.backgroundColor,
    this.textColor,
  });
  final String title;
  final VoidCallback? ontap;
  final Color? backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
            elevation: 0,
          ),
          onPressed: ontap ?? () {},
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style:
                  AppStyles.styleSemiBold18(context).copyWith(color: textColor),
            ),
          )),
    );
  }
}
