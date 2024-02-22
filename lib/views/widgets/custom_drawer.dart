import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawar_item.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> drawerItem = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTrancation, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatices, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesInvestmantce, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
            image: Assets.imagesAvater3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: drawerItem.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomDrawerItem(drawerItemModel: drawerItem[index]),
            ),
          )
        ],
      ),
    );
  }
}
