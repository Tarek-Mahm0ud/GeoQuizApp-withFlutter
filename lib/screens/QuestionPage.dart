import 'package:flutter/material.dart';
import '../models/Category.dart';
import '../models/Question.dart';
import 'package:task/screens/end_screen.dart';

class QuestionPage extends StatefulWidget {
  final Category category;
  
  const QuestionPage({super.key, required this.category});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  late List<Question> questions;
  int currentQuestionIndex = 0;
  int score = 0;
  bool answered = false;

  @override
  void initState() {
    super.initState();
    questions = widget.category.generateQuestions();
  }

  void answerQuestion(String selectedAnswer) {
    setState(() {
      answered = true;
      if (selectedAnswer == questions[currentQuestionIndex].correctAnswer) {
        score++;
      }
    });
  }

  void nextQuestion() {
    setState(() {
      currentQuestionIndex++;
      answered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex >= questions.length) {
      return EndScreen(
        score: score,
        totalQuestions: questions.length,
      );
    }

    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Question Image
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(currentQuestion.imagePath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Options
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: currentQuestion.options.length,
                itemBuilder: (context, index) {
                  final option = currentQuestion.options[index];
                  Color buttonColor = Colors.blue;
                  
                  if (answered) {
                    if (option == currentQuestion.correctAnswer) {
                      buttonColor = Colors.green;
                    } else if (option == currentQuestion.options[index] && 
                              option != currentQuestion.correctAnswer) {
                      buttonColor = Colors.red;
                    }
                  }
                  
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: answered ? null : () => answerQuestion(option),
                      child: Text(option),
                    ),
                  );
                },
              ),
            ),
            if (answered) ...[
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: nextQuestion,
                child: const Text('Next Question'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}