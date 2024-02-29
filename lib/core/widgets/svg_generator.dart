import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgGenerator extends StatelessWidget {
  final String? svgName;
  final double? svgHeight;
  final double? svgWidth;
  final Color? svgColor;

  const SvgGenerator(
    this.svgName, {
    super.key,
    this.svgHeight,
    this.svgWidth,
    this.svgColor,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svgs/$svgName.svg',
      height: svgHeight,
      width: svgHeight,
      colorFilter: svgColor == null
          ? null
          : ColorFilter.mode(svgColor!, BlendMode.srcIn),
    );
  }
}
