import 'Question.dart';

abstract class Category {
  /// The name of the category (e.g. "Flags", "Capitals")
  String get name;

  /// Generates a list of questions for this category
  List<Question> generateQuestions();
}
