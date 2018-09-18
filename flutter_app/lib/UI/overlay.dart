import 'package:flutter/material.dart';

class CheckOverlay extends StatefulWidget{

  final bool _isCorrect;
  VoidCallback _onTap;  //void _onTap();
  CheckOverlay(this._isCorrect, this._onTap);


  @override
  State createState() => CheckOverlayState();

}

class CheckOverlayState extends State<CheckOverlay> with SingleTickerProviderStateMixin{

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    // TODO: implement initState
    _iconAnimationController = new AnimationController(vsync: this , duration: new Duration(milliseconds: 1000));
    _iconAnimation = new CurvedAnimation(parent: _iconAnimationController, curve: Curves.bounceOut);
    _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward(); // only update the animation once.
                                        // to continuously update, overwrite didUpdateWidget
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //TO FREE RESOURCES FROM ANIMATION
    _iconAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Material(
      color: Colors.black54,
      child: InkWell(
        onTap: ()=>widget._onTap(),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color:Colors.lightGreen,
                shape: BoxShape.circle
              ),

              child: new Transform.rotate(
                  angle: _iconAnimation.value*2*3.1412,
                child: new Icon(widget._isCorrect == true ? Icons.done : Icons.clear, size: _iconAnimation.value * 80.0),

              )
            ),
            new Padding(
              padding: new EdgeInsets.only(bottom: 20.0),
            ),
            new Text(widget._isCorrect == true ? "Correct!" : "Wrong!",style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 65.0))

          ],
        ),
      ),
    );
  }

}