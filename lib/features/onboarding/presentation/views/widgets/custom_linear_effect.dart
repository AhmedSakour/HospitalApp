import 'package:flutter/material.dart';

class CustomLinearEffect extends StatelessWidget {
  const CustomLinearEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.00, -1.00),
              end: const Alignment(0, 1),
              colors: [Colors.white.withOpacity(0), Colors.white],
            ),
          ),
        ),
      ],
    );
  }
}
