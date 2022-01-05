import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: false),
  ];

  void function nextQuestion() {
    _questionNumber++;
    _questionNumber =
        _questionNumber % getQuestionLength();
  }

  String getQuestionText() {
    return this._questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return this._questions[_questionNumber].questionAnswer;
  }

  bool checkQuestionAnswer(bool userAnswer) {
    return this._questions[_questionNumber].questionAnswer == userAnswer;
  }

  int getQuestionLength() {
    return this._questions.length;
  }
}
