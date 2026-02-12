
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/quick_invoce.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        AllExpensess(), SizedBox(height: 24), QuickInvoce()],
    );
  }
}
