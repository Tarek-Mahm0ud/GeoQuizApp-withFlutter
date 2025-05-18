class Question {
  String? title;
  String imagePath='';
  String correctAnswer='';
  List<String> options=[];

  Question(
      {required String image,
      required String correctAns,
      required List<String> opt}) {
    imagePath = image;
    correctAnswer = correctAns;
    options = opt;
  }
}
