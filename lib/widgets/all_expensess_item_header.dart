import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image),
        ),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF064061),
            ),
          ),
      ],
    );
  }
}
