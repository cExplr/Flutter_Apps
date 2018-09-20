import 'package:flutter/material.dart';

class ChallengeAvatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return new Container(

      decoration: new BoxDecoration(

          borderRadius: new BorderRadius.circular(10.0),

      ),
      margin: new EdgeInsets.only(top:48.0, left: 5.0),
      child: 
        new Image(image: new AssetImage("images/offseclogo.png"),
          width: 150.0,
          height: 150.0,),


    );
  }
  
}