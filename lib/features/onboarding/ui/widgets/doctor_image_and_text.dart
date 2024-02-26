import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/images_and_svg_generator.dart';
import 'package:flutter/material.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        verticalSpace(10),
        Row(
          children: [
            horizontalSpace(10),
            svgGenerator('docdoc_logo_low_opacity')
          ],
        ),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0.0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.14, 0.4])),
            child: imageGenerator('onboarding_doctor')),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text('Best Doctor\nAppointment App',
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(height: 1.4)),
        )
      ],
    );
  }
}
