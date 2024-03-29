import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/svg_generator.dart';
import 'package:flutter/material.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SvgGenerator('docdoc_logo'),
        horizontalSpace(10),
        Text('DocDoc', style: TextStyles.font24BlackBold)
      ],
    );
  }
}
