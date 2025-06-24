import 'package:flutter/material.dart';
import '../button/custom_button.dart';
import '../../config/route/app_routes.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

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
              'assets/image/OBJECTS.png',
              width: 332,
              height: 227,
              fit: BoxFit.contain,
            ),
          ),
          // Back arrow top left
          Positioned(
            top: 63,
            left: 16,
            child: SizedBox(
              width: 32,
              height: 32,
              child: IconButton(
                icon: const Icon(Icons.chevron_left, color: Color.fromARGB(255, 253, 251, 251), size: 32),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ),
          ),
          // Skip button top right
          Positioned(
            top: 63,
            right: 16,
            child: SizedBox(
              width: 60,
              height: 32,
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.auth);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(50, 32),
                  ),
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
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
                    'Earn Rewards',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Earn rewards with every purchase. Get started today and unlock exclusive benefits!',
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
                      color: index == 1 ? Colors.pink : Colors.grey[300],
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
                Navigator.of(context).pushNamed(AppRoutes.onboarding3);
              },
            ),
          ),
        ],
      ),
    );
  }
}
