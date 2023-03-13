import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPress,
    required this.text,
    required this.backgroundColor,
  }) : super(key: key);

  final String text;
  final Color backgroundColor;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        side: BorderSide.none,
      ),
      child: Text(text),
    );
  }
}
