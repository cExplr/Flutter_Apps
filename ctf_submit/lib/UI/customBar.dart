import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget{
  final String title;
  final double barHeight;
  
  CustomBar(this.title, this.barHeight);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    
    
    return new Container(
      height: barHeight,
      decoration: new BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: new BorderRadius.circular(10.0),

      ),
      child: Center(
          child: new Text(
              title,
            style: TextStyle(color: Colors.redAccent, fontSize: 25.0, fontWeight: FontWeight.bold),
          )
      ),
    );
  }
  
}