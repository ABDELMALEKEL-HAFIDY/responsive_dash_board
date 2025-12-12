import 'dart:ui';
import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  final Widget child;

  const BackgroundColor({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🌈 Pastel Gradient (نفس اللي في الصورة)
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFDE2EB), // soft pink
                Color(0xFFE6E0FF), // soft purple
                Color(0xFFD7F8FF), // soft cyan
              ],
            ),
          ),
        ),

        // ✨ Soft Glass Blur Layer
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            color: Colors.white.withOpacity(0.15),
          ),
        ),

        child, 
      ],
    );
  }
}
