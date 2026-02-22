import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transction_history_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransctionHistoryHeader(),
        const SizedBox(height: 20),
        Text('13 April 2025 ',
        style: AppStyles.styleMedium16(context),
        ),
        SizedBox(height: 20),
        TransctionHistoryListView(),
      ],
    );
  }
}

class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transction History", style: AppStyles.styleSemiBold20(context)),
        Text('See All', style: AppStyles.styleMedium16(context).copyWith(color: Color(0xFF4EB7F2)),),
      ],
    );
  }
}
