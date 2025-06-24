import 'package:flutter/material.dart';
import '../../component/screen/welcome_screen.dart';
import '../../component/screen/onboarding_screen1.dart';
import '../../component/screen/onboarding_screen2.dart';
import '../../component/screen/onboarding_screen3.dart';
import '../../features/auth/auth_screen.dart';
// Import other screens here as you create them

class AppRoutes {
  static const String welcome = '/';
  static const String onboarding1 = '/onboarding1';
  static const String onboarding2 = '/onboarding2';
  static const String onboarding3 = '/onboarding3';
  static const String auth = '/auth';
  // Add more route names as needed

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case onboarding1:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen1());
      case onboarding2:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen2());
      case onboarding3:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen3());
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
