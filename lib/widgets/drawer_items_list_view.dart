import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_models.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activateIndex = 0;
  final List<DrawerItemModels> items = [
    DrawerItemModels(title: 'Dashboard',
     image: Assets.imagesDashbord2),
    DrawerItemModels(
      title: 'My Transaction',
      image: Assets.imagesMytransaction,
    ),
    DrawerItemModels(title: 'Statistics', 
    image: Assets.imagesStatistic),
    DrawerItemModels(
      title: 'Wallet Account',
      image: Assets.imagesWalletaccount,
    ),
    DrawerItemModels(
      title: 'My Investments',
      image: Assets.imagesMyinvestement,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activateIndex != index) {
              setState(() {
                activateIndex = index;
               // print(activateIndex);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModels: items[index],
              isActive: activateIndex == index,
            ),
          ),
        );
      },
    );
  }
}
