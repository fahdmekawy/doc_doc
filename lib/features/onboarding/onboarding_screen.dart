import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/helpers/padding.dart';
import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:doc_doc/features/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import '../../core/routing/routes.dart';
import '../../core/theming/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: symmetricPadding(vertical: 30),
            child: Column(
              children: [
                const DocLogoAndName(),
                verticalSpace(30),
                const DoctorImageAndText(),
                Padding(
                  padding: symmetricPadding(horizontal: 30),
                  child: Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.font14GreyRegular,
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(30),
                Padding(
                  padding: symmetricPadding(horizontal: 30),
                  child: AppTextButton(
                    buttonText: 'Get Started',
                    onPressed: () => context.pushNamed(Routes.loginScreen),
                    textStyle: TextStyles.font16WhiteSemiBold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
