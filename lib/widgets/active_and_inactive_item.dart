import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_models.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModels});

  final DrawerItemModels drawerItemModels;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModels.image),
      title: Text(drawerItemModels.title, style: AppStyles.styleMedium16),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModels});

  final DrawerItemModels drawerItemModels;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModels.image),
      title: Text(drawerItemModels.title, style: AppStyles.styleBold16),
      trailing: Container(
        width: 3.27,
         
         decoration: BoxDecoration(color:Color(0xFF8A5EF4))),
    );
  }
}
