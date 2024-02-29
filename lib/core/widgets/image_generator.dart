import 'package:flutter/material.dart';

class ImageGenerator extends StatelessWidget {
  final String? imageName;
  final double? imageHeight;
  final double? imageWidth;
  final String? imageExtension;

  const ImageGenerator(
    this.imageName, {
    super.key,
    this.imageHeight,
    this.imageWidth,
    this.imageExtension,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$imageName.$imageExtension',
      height: imageHeight,
      width: imageWidth,
    );
  }
}
