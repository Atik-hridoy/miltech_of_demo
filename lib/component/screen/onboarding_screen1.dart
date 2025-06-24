import 'package:flutter/material.dart';
import '../button/custom_button.dart';
import '../../config/route/app_routes.dart';


class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -303,
            left: -155,
            child: Image.asset(
              'assets/image/Ellipse 1.png',
              width: 700,
              height: 750,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 121,
            left: 29,
            child: Image.asset(
              'assets/image/Group.png',
              width: 332,
              height: 227,
              fit: BoxFit.contain,
            ),
          ),
          // Skip button top right
          Positioned(
            top: 63,
            right: 16,
            child: SizedBox(
              width: 60,
              height: 21,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.auth);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(50, 21),
                ),
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Color.fromARGB(255, 243, 242, 242),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          // Onboarding text
          Positioned(
            top: 547,
            left: 37,
            child: SizedBox(
              width: 317,
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Welcome To [App Name]',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Your journey to awesome starts here.',
                    style: TextStyle(
                      fontSize: 16, 
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          // Custom button and page indicator at the bottom
          Positioned(
            bottom: 32,
            left: 32,
            child: Row(
              children: [
                // Smooth page indicator
                Row(
                  children: List.generate(3, (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 0 ? Colors.pink : Colors.grey[300],
                    ),
                  )),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 32,
            right: 32,
            child: CustomButton(
              text: 'Next',
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.onboarding2);
              },
            ),
          ),
        ],
      ),
    );
  }
}
