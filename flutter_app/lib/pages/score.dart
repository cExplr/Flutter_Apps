import 'package:flutter/material.dart';
import 'landing_page.dart';
class ScorePage extends StatelessWidget{

  final int score;
  final int totalQuestions;

  ScorePage(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
      return new Material(
        color: Colors.blueAccent,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Your Score: ",style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0),),
            new Text(score.toString() +"/"+ totalQuestions.toString(),style: new TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold)),
            new IconButton(
                icon: Icon(Icons.arrow_right) ,
                onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context)=>LandingPage()), (Route route)=>route == null);
                  return;
                },
                iconSize: 50.0
            )

          ],
        ),
      );
  }


}