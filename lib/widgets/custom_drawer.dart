import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.05),
      child: const Column(children: [
        UserInfoListTile(image: Assets.imagesAvatar1, title: 'abdelmalek el-hafidy', subtitle: 'assilajuen@gmail.com')
      ]),
    );
  }
}
