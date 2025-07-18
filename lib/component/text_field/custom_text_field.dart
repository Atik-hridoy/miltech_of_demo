import 'package:flutter/material.dart';

/// Placeholder for custom text field widget.
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextField({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return TextField(controller: controller);
  }
}
