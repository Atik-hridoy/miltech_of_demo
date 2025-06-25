import 'package:flutter/material.dart';
import '../../component/screen/welcome_screen.dart';
import '../../component/screen/onboarding_screen.dart'; 
import '../../features/auth/auth_screen.dart';

class AppRoutes {
  static const String welcome = '/';
  static const String onboarding = '/onboarding';
  static const String auth = '/auth';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case auth:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route defined for this path')),
          ),
        );
    }
  }
}
