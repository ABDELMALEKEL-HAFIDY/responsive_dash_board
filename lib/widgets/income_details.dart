import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_models.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/items_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModels(
      color: Color(0xFF208BC7),
      title: 'Design service',
      value: '%40',
    ),
    ItemDetailsModels(
      color: Color(0xFF4DB7F2),
      title: 'Design product',
      value: '%25',
    ),
    ItemDetailsModels(
      color: Color(0xFF064060),
      title: 'Product royalti',
      value: '%20',
    ),
    ItemDetailsModels(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailsModels: e)).toList(),
    );
    //return ListView.builder(
    // shrinkWrap: true,
    // itemCount: items.length,
    // itemBuilder: (context, index) {
    //    return ItemDetails(itemDetailsModels: items[index]);
    //   },
    // );
  }
}
