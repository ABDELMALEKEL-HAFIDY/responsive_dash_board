import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_models.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModels});
  final ItemDetailsModels itemDetailsModels;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModels.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(itemDetailsModels.title, style: AppStyles.styleRegular16),
      trailing: Text(itemDetailsModels.value, style: AppStyles.styleRegular16),
    );
  }
}