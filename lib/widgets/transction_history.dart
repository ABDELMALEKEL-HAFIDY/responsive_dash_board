import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Transction History", style: AppStyles.styleSemiBold20),
            Text('See All', style: AppStyles.styleMedium16.copyWith(color: Color(0xFF4EB7F2)),),
          ],
        )
      ],
    );
  }
}
