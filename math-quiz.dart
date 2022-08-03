import "dart:math";
import "dart:io";

double promptDouble(String promptText){
  print(promptText);
  double myNum = double.parse(stdin.readLineSync());
  return myNum;
}

class MathQuestion {
  
  String question;
  double answer;

  MathQuestion(String aQuestion, double aAnswer){
    this.question = aQuestion;
    this.answer = aAnswer;
  }
}

void main() {

  List<MathQuestion> questions = [
    MathQuestion("3 + 5", 8.0),
    MathQuestion("10 - 7", 3.0),
    MathQuestion("100 * 9", 900.0)
  ];

  int score = 0;

    for(MathQuestion mathQuestion in questions){
      double userAnswer = promptDouble(mathQuestion.question);
      if (userAnswer == mathQuestion.answer){
        score++;
        print("Correct");
        print(" ");
      }else{
        print("Incorrect. The answer was ${mathQuestion.answer}");
        print(" ");
      }
    }

    print("You got ${score}/${questions.length}.");

    switch(score){
      case 3:
        print("You are a legend!");
        break;
      case 2:
        print("Good!");
        break;
      case 1:
        print("Bad!");
        break;
      case 0:
        print("Very bad!");
        break;
    }
  
}