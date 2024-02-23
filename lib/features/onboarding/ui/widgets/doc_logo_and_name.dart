import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/svg_widget.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SvgWidget(svgName: 'docdoc_logo'),
        SizedBox(width: 10.w),
        Text('DocDoc', style: TextStyles.font24Black700Weight)
      ],
    );
  }
}
