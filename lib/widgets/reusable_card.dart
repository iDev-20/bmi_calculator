import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.color, this.cardChild, this.onTap, this.flex});

  final Color color;
  final Widget? cardChild;
  final VoidCallback? onTap;
  final int? flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: flex ?? 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: cardChild,
        ),
      ),
    );
  }
}
