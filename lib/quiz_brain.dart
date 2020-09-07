import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionsList = [
    Question(questionAnswer: false,
        questionText: 'Zup foi criada em 2011 em São Paulo'),
    Question(
        questionAnswer: true, questionText: 'Dart 1.0 foi lançado em 2013'),
    Question(questionAnswer: true, questionText: 'Flutter copila para desktop')
  ];

  void nextQuestion() {
    if(_questionNumber < _questionsList.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionsList[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionsList[_questionNumber].questionAnswer;
  }
}