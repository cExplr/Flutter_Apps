import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{

  final bool _answer;
  VoidCallback _onTap;  // returns void and takes no arguments  or a type of  typedef
  AnswerButton(this._answer, this._onTap);


  @override
  Widget build(BuildContext context) {


    return new Expanded(
        child: new Material(
          color: _answer == true ? Colors.greenAccent : Colors.redAccent,
          child: new InkWell(
            onTap: _onTap,
            child: new Center(
              child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(
                    color: Colors.white,
                    width: 5.0
                  )

                ),
                padding:  new EdgeInsets.all(20.0),
                child: new Text(_answer == true ? "True" : "False",
                  style:new TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 40.0) ,),
            ),
          ),
        )
      )
    );
  }

}