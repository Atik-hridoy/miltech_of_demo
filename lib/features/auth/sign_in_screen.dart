import 'package:flutter/material.dart';

// SignInScreen displays a simple sign-in form with background ellipse
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Large ellipse background image, positioned off-screen for effect (same as AuthScreen)
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
          // Add bold white text just above the logo, a bit left
          Positioned(
            top: 120, // moved text further up
            left: 60, // a bit left of the logo
            child: const Text(
              'Welcome Back!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32, // Bigger font
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 8,
                    color: Colors.black26,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
            ),
          ),
          // Add logo.png smaller and centered
          Positioned(
            top: 179,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/image/Logo.png',
                width: 120, // much smaller width
                height: 200, // much smaller height
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Main sign-in form content
          Positioned(
            top: 377,
            left: 16,
            child: SizedBox(
              width: 358,
              height: 166,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Email field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Or Phone Number',
                      labelStyle: const TextStyle(color: Colors.black54),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Password field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.black54),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      suffixIcon: Icon(Icons.visibility_off, color: Colors.black38),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Color(0xFFF43F5E),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // AppBar-like back button
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.chevron_left, size: 32, color: Colors.black),
              onPressed: () => Navigator.of(context).maybePop(),
              tooltip: 'Back',
            ),
          ),
        ],
      ),
    );
  }
}
