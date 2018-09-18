import 'package:flutter/material.dart';



class QuestionText extends StatefulWidget{


  final String _question;
  final int _questionNumber;

  QuestionText(this._question,this._questionNumber);

  @override
  //Create State which returns a state extended by State
  State createState() => QuestionTextState();
}

class QuestionTextState extends State<QuestionText> with SingleTickerProviderStateMixin{
  // SingleTickerProviderStateMixin is required for animation

  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fontSizeAnimationController = new AnimationController(duration: new Duration(milliseconds: 500), vsync: this); //vsync handles animation that goes outside the screen
    _fontSizeAnimation = new CurvedAnimation(parent: _fontSizeAnimationController, curve: Curves.bounceOut);
    _fontSizeAnimation.addListener(()=>this.setState((){}));
    _fontSizeAnimationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //TO FREE RESOURCES USED BY ANIMATION
    _fontSizeAnimationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(QuestionText oldWidget) {
    // TODO: implement didUpdateWidget
    //update the widget continuously
    super.didUpdateWidget(oldWidget);
    if(oldWidget._question != widget._question){
      _fontSizeAnimationController.reset();
      _fontSizeAnimationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new Padding(
        child: new Center(
          child: new Text("Question " + widget._questionNumber.toString() + " : " + widget._question ,
            style: new TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: _fontSizeAnimation.value*15),),
        ),
        padding: new EdgeInsets.symmetric(vertical: 20.0),
      ),
    );
  }

}