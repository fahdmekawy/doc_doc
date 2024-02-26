import 'package:doc_doc/core/di/dependancy_injection.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc/features/login/login_screen.dart';
import 'package:doc_doc/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen()));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
