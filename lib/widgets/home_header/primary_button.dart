import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
    this.text, {
    Key? key,
    this.icon = Icons.arrow_forward,
    this.primary,
    this.onPressed,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Color? primary;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: primary,
      ),
      child: Row(
        children: [
          Text(text),
          const SizedBox(width: 20),
          Icon(icon),
        ],
      ),
    );
  }
}