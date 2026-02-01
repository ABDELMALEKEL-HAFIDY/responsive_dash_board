import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCardBackground2),
          ),
          color: Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'name cart',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text('Syah Bandi', style: AppStyles.styleMedium20),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
          ],
        ),
      ),
    );
  }
}
