import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final String text;
  final double horizontalPadding;
  final double verticalPadding;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.bgColor,
    required this.text,
    this.horizontalPadding = 16,
    this.verticalPadding = 12,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
