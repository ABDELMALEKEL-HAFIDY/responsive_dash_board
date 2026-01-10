import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_models.dart';

import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';

import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.05),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar1,
              title: 'abdelmalek el-hafidy',
              subtitle: 'assilajuen@gmail.com',
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drawerItemModels: DrawerItemModels(
                    title: "Setting system",
                    image: Assets.imagesSetting,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModels: DrawerItemModels(
                    title: "Logout account",
                    image: Assets.imagesLogout,
                  ),
                ),

                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
