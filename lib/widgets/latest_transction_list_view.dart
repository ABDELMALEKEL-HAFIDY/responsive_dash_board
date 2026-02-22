import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Aziz Bourhlal',
      subtitle: 'AzizBourhlal@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Ayoub Bourhlal',
      subtitle: 'AyoubBourhlal@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Driss aissi',
      subtitle: 'Drissaissi@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: 
          items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList(),
        
      ),
    );
    //return SizedBox(
     // height: 80,
      //child: ListView.builder(
      //  scrollDirection: Axis.horizontal,
      //  itemCount: items.length,
      //  itemBuilder: (context, index) {
      //    return IntrinsicWidth(
     //       child: UserInfoListTile(userInfoModel: items[index]),
     //     );
     //   },
    //  ),
   // );
  }
}
