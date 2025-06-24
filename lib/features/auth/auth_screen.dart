import 'package:flutter/material.dart';
import 'sign_in_screen.dart';

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
                      children: [
                        // Icon in a box at the left edge
                        Container(
                          width: 48,
                          height: 48,
                          margin: const EdgeInsets.only(left: 3, right: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            // Removed border
                          ),
                          child: Center(
                            child: Image.asset('assets/icons/Social icon.png', 
                            height: 28, width: 28),
                          ),
                        ),
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
                      children: [
                        // Icon in a box at the left edge
                        Container(
                          width: 48,
                          height: 48,
                          margin: const EdgeInsets.only(left: 3, right: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            // Removed border
                          ),
                          child: Center(
                            child: Image.asset('assets/icons/Social icon (1).png', height: 28, width: 28),
                          ),
                        ),
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
                      children: [
                        // Icon in a box at the left edge
                        Container(
                          width: 48,
                          height: 48,
                          margin: const EdgeInsets.only(left: 3, right: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            // Removed border
                          ),
                          child: Center(
                            child: Image.asset('assets/icons/Social icon (2).png', height: 28, width: 28),
                          ),
                        ),
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
                      // Navigate to SignInScreen when pressed
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
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
                        color: Color.fromARGB(255, 68, 138, 255),
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
          // Add a back button (chevron_left) at the top left
          Positioned(
            top: 40, // Adjust as needed for your design
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.chevron_left, size: 32, color: Color.fromARGB(255, 252, 250, 250)),
              onPressed: () {
                // TODO: Implement back navigation
                Navigator.of(context).maybePop();
              },
              tooltip: 'Back',
            ),
          ),
        ],
      ),
    );
  }
}


