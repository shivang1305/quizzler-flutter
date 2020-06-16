import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';

class QuizBrain {
  //setting question number as private property of class so that it cannot be accessed from main.dart class
  int _questionNumber = 0;

  //list of questions (private property of class)
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
  ];

  //to get question since it is a private property
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  //getting correct answer
  bool getAns() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //restart the quiz
  void restartQuiz() {
    _questionNumber = 0;
  }

  //switch to next question
  int nextQuestion(BuildContext context) {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      return 0;
    } else
      return 1;
  }
}
