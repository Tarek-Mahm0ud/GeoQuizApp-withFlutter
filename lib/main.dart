import 'package:flutter/material.dart';
import 'package:task/screens/QuestionPage.dart';
import 'package:task/screens/about_page.dart';
import 'package:task/screens/welcome_page.dart';
import 'package:task/screens/CategoryPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeoQuiz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7A6BF5),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const WelcomePage(),
      routes: {
        '/welcome': (context) => const WelcomePage(),
        '/about': (context) => const AboutPage(),
        '/categories': (context) => const CategoryPage(),
      },
    );
  }
}