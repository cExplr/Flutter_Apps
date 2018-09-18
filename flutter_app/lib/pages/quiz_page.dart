import 'package:flutter/material.dart';
import '../UI/question_text.dart';
import '../UI/answer_button.dart';
import '../utils/question.dart';
import '../utils/quiz.dart';
import '../UI/overlay.dart';
import 'score.dart';

class QuizPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => QuizPageState();
}

class QuizPageState extends State<QuizPage>{

  Question currentQuestion;

  Quiz quiz = new Quiz([
    new Question("One Equals Two", false),
    new Question("I am a human", true),
    new Question("One plus one equals three", false),
    new Question("Three Minus Two equals 3", false),
  ]);

 String questionText;
 int questionNumber;
 bool isCorrect;
 bool overlayVisible = false;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }


  void handleAnswer(bool answer){
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    setState(() {
      overlayVisible = true;
    }); //We want to display overlay which means changing the visuals and thus the state
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          //This is our main page
          children: <Widget>[
            AnswerButton(true,(){handleAnswer(true);}),
            new QuestionText(questionText,questionNumber),
           AnswerButton(false,(){handleAnswer(false);})
          ]
        )
        ,overlayVisible == true ? new CheckOverlay(
            isCorrect,
                (){
                  if(quiz.length == questionNumber){
                    //pushAndRemoveUntil over here will delete the past routes so you cannot go back to the previous page without resetting
                    Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext build)=>ScorePage(quiz.score, quiz.length)) ,(Route route) =>  route == null);
                    return;
                  }
                  currentQuestion = quiz.nextQuestion;
                  this.setState((){
                      overlayVisible=false;
                      questionText = currentQuestion.question;
                      questionNumber = quiz.questionNumber;
                  });}) : new Container() // Empty Container to hide overlay
      ],
    );
  }

}