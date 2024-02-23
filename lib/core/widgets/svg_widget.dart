import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgWidget extends StatelessWidget {
  final String svgName;

  const SvgWidget({super.key, required this.svgName});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/svgs/$svgName.svg');
  }
}
