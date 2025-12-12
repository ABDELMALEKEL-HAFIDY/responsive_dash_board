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
              colors: [Color.fromARGB(255, 101, 30, 119), Color(0xFF551354), Color.fromARGB(255, 40, 7, 54)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
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
