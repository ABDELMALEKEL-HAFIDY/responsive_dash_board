import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item_header.dart';
import 'package:responsive_dash_board/widgets/inactive_and_active_all_expensess_item.dart';

class AllExpenssessItem extends StatelessWidget {
  const AllExpenssessItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });
  final AllExpensessItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return ActiveAllExpensessItem(itemModel: itemModel);
  }
}
