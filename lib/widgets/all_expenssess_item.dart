import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
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
    return isSelected ? ActiveAllExpensessItem(itemModel: itemModel) 
    : InActiveAllExpensessItem(itemModel: itemModel);
  }
}
