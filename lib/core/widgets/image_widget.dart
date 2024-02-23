import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageName;

  const ImageWidget({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/$imageName.png');
  }
}
