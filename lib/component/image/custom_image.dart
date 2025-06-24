import 'package:flutter/material.dart';

/// Placeholder for image component.
class CustomImage extends StatelessWidget {
  final String imageUrl;
  const CustomImage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl);
  }
}
