import 'package:flutter/material.dart';
import '../button/custom_button.dart';
import '../../config/route/app_routes.dart';

class OnboardingData {
  final String imagePath;
  final String title;
  final String description;

  OnboardingData({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<OnboardingData> _pages = [
    OnboardingData(
      imagePath: 'assets/image/Group.png',
      title: 'Welcome To [App Name]',
      description: 'Your journey to awesome starts here.',
    ),
    OnboardingData(
      imagePath: 'assets/image/OBJECTS.png',
      title: 'Earn Rewards',
      description:
          'Earn rewards with every purchase. Get started today and unlock exclusive benefits!',
    ),
    OnboardingData(
      imagePath: 'assets/image/o2.png',
      title: 'Refer a Friend, Get Rewarded!',
      description: 'Let’s get started and enjoy the experience!',
    ),
  ];

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.of(context).pushReplacementNamed(AppRoutes.auth);
    }
  }

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
          PageView.builder(
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            itemBuilder: (context, index) {
              final page = _pages[index];
              return Padding(
                padding: const EdgeInsets.only(top: 121),
                child: Column(
                  children: [
                    Image.asset(
                      page.imagePath,
                      width: 332,
                      height: 227,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 200),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        children: [
                          Text(
                            page.title,
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            page.description,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            top: 63,
            right: 16,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(AppRoutes.auth);
              },
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
          if (_currentPage > 0)
            Positioned(
              top: 63,
              left: 16,
              child: IconButton(
                icon: const Icon(Icons.chevron_left, size: 32),
                onPressed: () {
                  _controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          Positioned(
            bottom: 32,
            left: 32,
            child: Row(
              children: List.generate(
                _pages.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == _currentPage
                        ? Colors.pink
                        : Colors.grey[300],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            right: 32,
            child: CustomButton(
              text: _currentPage == _pages.length - 1 ? 'Get Started' : 'Next',
              onPressed: _nextPage,
            ),
          ),
        ],
      ),
    );
  }
}
