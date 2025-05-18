import 'Category.dart';
import 'Country.dart';
import 'Question.dart';

class CapitalsCategory extends Category {
  @override
  String get name => 'Country Capitals';

  @override
  List<Question> generateQuestions() {
    List<Question> questions = []; 
    for (var c in countries) {
      final List<String> options = countries.map((c) => c.capital).toList()
        ..remove(c.capital);
      options.shuffle();
      final incorrect = options.take(3).toList();
      final allOptions = [...incorrect, c.capital]..shuffle();
      questions.add(
        Question(
          image: c.imagePath, 
          correctAns: c.capital, 
          opt: allOptions
        ),
      );
    }
    questions.shuffle();
    return questions;
  }
}