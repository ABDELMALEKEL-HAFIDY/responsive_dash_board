import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item_header.dart';

class AllExpenssessItem extends StatelessWidget {
  const AllExpenssessItem(this.itemModel, {super.key});
  final AllExpensessItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      child: Column(children: [
        AllExpensessItemHeader(
          image: itemModel.image,
        )]),
    );
  }
}
