import 'question.dart';

class Quizbrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        q: '1. Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: '2. A Sneeze is faster than an eye blink', a: true),
    Question(q: '3. Finger nails grow faster than hair', a: false),
    Question(q: '4. A Baby has more bones than an Adult', a: true),
    Question(
        q: '5. Every time a month begins on a Monday, it will have Friday the 13th.',
        a: false),
    Question(
        q: '6. The moon is just 50 percent of the mass of Earth.', a: false),
    Question(q: '7. Bananas grow upside down.', a: true),
    Question(q: '8. Some CATS are actually allergic to HUMANS.', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questiontext;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionanswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning True');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
