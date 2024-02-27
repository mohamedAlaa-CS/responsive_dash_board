import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.imagesBackgroungCard),
            fit: BoxFit.fill,
          ),
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 35),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Name card',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
                subtitle: const Text(
                  'Mohamed Alaa',
                  style: AppStyles.styleMeduim20,
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 27)
          ],
        ),
      ),
    );
  }
}
