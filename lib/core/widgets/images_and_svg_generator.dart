import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget imageGenerator(imageName) => Image.asset('assets/images/$imageName.png');

Widget svgGenerator(svgName) => SvgPicture.asset('assets/svgs/$svgName.svg');
