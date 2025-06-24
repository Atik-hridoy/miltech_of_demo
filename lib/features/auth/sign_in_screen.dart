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
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Email field
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  // Password field
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 24),
                  // Sign In button
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Implement sign in logic
                      },
                      child: const Text('Sign In'),
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
