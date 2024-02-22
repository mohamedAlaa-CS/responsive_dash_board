import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawar_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> drawerItem = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerItemModel(
        image: Assets.imagesMyTrancation, title: 'My Transaction'),
    const DrawerItemModel(image: Assets.imagesStatices, title: 'Statistics'),
    const DrawerItemModel(
        image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    const DrawerItemModel(
        image: Assets.imagesInvestmantce, title: 'My Investments'),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItem.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CustomDrawerItem(
            isActive: activeIndex == index,
            drawerItemModel: drawerItem[index],
          ),
        ),
      ),
    );
  }
}
