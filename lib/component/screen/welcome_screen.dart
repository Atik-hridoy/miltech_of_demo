import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../config/route/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacementNamed(AppRoutes.onboarding);
    });
    return Scaffold(
      backgroundColor: const Color(0xFFF43F5E),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.onboarding);
          },
          child: SvgPicture.asset(
            'assets/image/Logo.svg',
            width: 120,
            height: 120,
          ),
        ),
      ),
    );
  }
}
