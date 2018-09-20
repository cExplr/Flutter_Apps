import 'package:flutter/material.dart';
import 'customBar.dart';
import 'ChallengeAvartar.dart';

class ChallengeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Column(
     children: <Widget>[
       new ChallengeCard(
           "Binary",
           "Get dem shells manzz",
           Colors.white
       ),

       new ChallengeCard(
           "Reversing",
           "GDB FTW!",
           Colors.yellow
       ),

       new ChallengeCard(
           "Crypto",
           "C4n y0u_D3cryp7 M3?",
           Colors.cyan
       ),


     ],
    );
  }

}


class ChallengeCard extends StatelessWidget{

    /*
    * Accepts arguments
    *
    * Card Title : String
    *
    * Challenge Description : String
    *
    * color : Color
    *
    */

  final String title;
  final String description;
  final Color color;
  ChallengeCard(this.title, this.description, this.color);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Stack(

      children: <Widget>[

        Container(
            decoration: new BoxDecoration(
                color: Color.fromRGBO(0x7f, 0x7f ,0xff, 40.0),
                borderRadius: new BorderRadius.circular(10.0),
                boxShadow: <BoxShadow>[

                  new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(0.0, 35.0)
                  )
                ]
            ),

            height: 130.0,

            margin: const EdgeInsets.fromLTRB(70.0, 36.0, 35.0, 6.0),
            width: MediaQuery.of(context).size.width*0.9,
            child: new Column(

              children: <Widget>[
                new CustomBar(title, 36.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    new SizedBox(width: 100.0,),

                    Expanded( // Needed for wrapping the text within the container itself
                      child: Padding(

                        padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                        child: Text(
                            description,
                            style: new TextStyle(
                                fontSize: 20.0,
                                fontStyle: FontStyle.italic,
                                color: color,
                                fontWeight: FontWeight.bold
                            )
                        )
                      )
                    )
                  ]
                )
              ]
            )
      ),

      new ChallengeAvatar()
      ],
    );
  }

}