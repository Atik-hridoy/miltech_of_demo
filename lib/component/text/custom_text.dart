import 'package:flutter/material.dart';

/// Placeholder for custom text widget.
class CustomText extends StatelessWidget {
  final String text;
  const CustomText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
