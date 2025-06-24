import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../config/route/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, // Red background
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.onboarding1);
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
