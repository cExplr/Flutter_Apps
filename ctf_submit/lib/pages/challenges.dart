import 'package:flutter/material.dart';
import 'package:ctf_submit/UI/customBar.dart';
import 'package:ctf_submit/UI/ChallengeBody.dart';

class ChallengePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return ChallengePageState();
  }

}

class ChallengePageState extends State<ChallengePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(




      backgroundColor: Colors.black12,

//      appBar: new AppBar(
//        backgroundColor: Colors.teal,
//        title: new Text("CHALLENGES"),
//      ),
      body: Container(
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
          new Image(
              image: new AssetImage(
                "images/shellcode.png"),
          color: Color.fromRGBO(0, 0, 0, 80.0),
          colorBlendMode: BlendMode.darken,
            fit: BoxFit.cover,
          ),

          new Column(
            children: <Widget>[
            new  CustomBar("Flag-Submission",66.0),
            new ChallengeBody()
        ],
      ),
          ],
        ),

      ),
    );
  }

}