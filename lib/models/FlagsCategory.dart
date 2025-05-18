import 'Category.dart';
import 'Country.dart';
import 'Question.dart';

class FlagsCategory extends Category {
  @override
  String get name => 'Country Flags';

  @override
  List<Question> generateQuestions() {
    List<Question> questions = [];
    for (var c in countries) {
      final List<String> options = countries.map((c) => c.name).toList()
        ..remove(c.name);
      options.shuffle();
      final incorrect = options.take(3).toList();
      final allOptions = [...incorrect, c.name]..shuffle();
      questions.add(
          Question(image: c.imagePath, correctAns: c.name, opt: allOptions));
    }
    questions.shuffle();
    return questions;
  }
}
