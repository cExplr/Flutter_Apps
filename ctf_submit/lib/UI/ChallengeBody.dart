import 'package:flutter/material.dart';
import 'customBar.dart';
class ChallengeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Column(
     children: <Widget>[
       new ChallengeRow(),new ChallengeRow(),new ChallengeRow(),
     ],
    );
  }

}


class ChallengeRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Container(
      height: 130.0,
      color: Colors.tealAccent,
      margin: const EdgeInsets.fromLTRB(36.0, 12.0, 14.0, 6.0),
      child: new Column(
        children: <Widget>[
          new CustomBar("Cryptography", 36.0),
          Row(
            children: <Widget>[

              new SizedBox(width: 115.0,),

              new Text("Nice Challenge",
              style: new TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                color: Colors.black26
              ),),
                // CAN ADD CHALLENGE NAMES ,ETC

            ],
          )
        ],
      ),
    );
  }

}