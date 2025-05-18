// lib/screens/about_page.dart
import 'package:flutter/material.dart';
import 'url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D2642),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'About GeoQuiz',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Phone emoji icon
              Center(
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 95, 80, 182),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Center(
                    child: Text(
                      '📱',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              // App Info
              const Text(
                'What is GeoQuiz?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'GeoQuiz is a fun and engaging quiz application that tests your knowledge across various categories. Flags, capitals etc.. , we\'ve got everything covered to challenge your intellect.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'How to play:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                '1. Choose a category that interests you\n'
                '2. Answer the questions as fast as you can\n'
                '3. Get instant feedback on your answers\n'
                '4. Complete the quiz to see your final score\n'
                '5. Share your results with friends and challenge them!',
                style: TextStyle(
                  color: Color.fromARGB(203, 255, 255, 255),
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),
              // Social Media Buttons
              const Text(
                'Connect with us:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Facebook Button
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        launchURL(context, 'https://facebook.com');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3b5998),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      icon: const Icon(Icons.facebook, color: Colors.white),
                      label: const Text(
                        'Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Google Button
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        launchURL(context, 'https://google.com');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDB4437),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      icon: const Icon(Icons.language, color: Colors.white),
                      label: const Text(
                        'Google',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const Spacer(),
              const Text(
                '© 2025 GeoQuiz. All rights reserved.',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}