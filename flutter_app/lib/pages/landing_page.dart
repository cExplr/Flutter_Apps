import 'package:flutter/material.dart';
import 'quiz_page.dart';

    class LandingPage extends StatelessWidget{

    // Stateless widget - do not have to rerender images for example clock time keeps changing an
        //and you dont want to rerender everything

        @override
        Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
        //Acts like a piece of paper
        color: Colors.green,
        child: new InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> QuizPage()))
          ,child : new Column(
            mainAxisAlignment: MainAxisAlignment.center
            ,children: <Widget>[
            new Text("My First Flutter App",style: new TextStyle(
              color: Colors.white,fontSize: 35.0, fontWeight: FontWeight.bold
            ),),
            new Text("Tap to Start",style: new TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
          ],)
        ),
    );
  }

    }