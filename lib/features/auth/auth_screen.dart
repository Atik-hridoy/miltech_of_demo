import 'package:flutter/material.dart';

// AuthScreen is the main authentication screen with background and social login buttons
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The main body uses a Stack to layer background and positioned widgets
      body: Stack(
        children: [
          // Large ellipse background image, positioned off-screen for effect
          Positioned(
            top: -373,
            left: -155,
            child: Image.asset(
              'assets/image/Ellipse 1.png', 
              width: 700,
              height: 750,
              fit: BoxFit.cover,
            ),
          ),
          // Decorative image layered above the ellipse
          Positioned(
            top: 61,
            left: 29,
            child: Image.asset(
              'assets/image/o3.png',
              width: 332,
              height: 227,
              fit: BoxFit.contain,
            ),
          ),
          // Social login buttons positioned under the background image
          Positioned(
            top: 400, // Controls vertical position of the button group
            left: 24,
            right: 24,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Google Login Button
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: OutlinedButton(
                    onPressed: () {
                      // TODO: Implement Google login
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Rounded corners
                      ),
                      side: const BorderSide(color: Colors.grey, width: 1), // Border style
                      backgroundColor: Colors.white, // Button background
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Google icon
                        Image.asset('assets/icons/Social icon.png', height: 32, width: 32),
                        const SizedBox(width: 16), // Space between icon and text
                        const Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Spacing between Google and Facebook buttons
                const SizedBox(height: 16),
                // Facebook Login Button
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: OutlinedButton(
                    onPressed: () {
                      // TODO: Implement Facebook login
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: const BorderSide(color: Colors.grey, width: 1),
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Facebook icon
                        Image.asset('assets/icons/Social icon (1).png', height: 32, width: 32),
                        const SizedBox(width: 16),
                        const Text(
                          'Continue with Facebook',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Spacing between Facebook and Apple buttons
                const SizedBox(height: 8),
                // Apple Login Button
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: OutlinedButton(
                    onPressed: () {
                      // TODO: Implement Apple login
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: const BorderSide(color: Colors.grey, width: 1),
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Apple icon
                        Image.asset('assets/icons/Social icon (2).png', height: 32, width: 32),
                        const SizedBox(width: 16),
                        const Text(
                          'Continue with Apple',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Spacing between Apple and Sign In button
                const SizedBox(height: 16),
                // Sign In Button
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement Sign In
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.blueAccent, // You can change color as needed
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                // Spacing between Sign In and Sign Up button
                const SizedBox(height: 8),
                // Sign Up Button
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: OutlinedButton(
                    onPressed: () {
                      // TODO: Implement Sign Up
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: const BorderSide(color: Colors.blueAccent, width: 1),
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Terms & Conditions and Privacy Policy buttons at the bottom left
          Positioned(
            left: 24,
            bottom: 24,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    // TODO: Navigate to Terms & Conditions
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(102, 18),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft,
                  ),
                  child: const Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.3,
                      color: Color(0xFF181818),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                TextButton(
                  onPressed: () {
                    // TODO: Navigate to Privacy Policy
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(102, 18),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft,
                  ),
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.3,
                      color: Color(0xFF181818),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


