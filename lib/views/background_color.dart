import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  final Widget child;

  const BackgroundColor({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // gradient background
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFEE3E0),
                Color(0xFFE6D5FA),
                Color(0xFFFDD1F7),
                Color(0xFFFFE6CC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),

        // glass blur
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
          child: Container(color: Colors.white.withOpacity(0.05)),
        ),

        child, // ← محتوى الصفحة فوق الخلفية
      ],
    );
  }
}
