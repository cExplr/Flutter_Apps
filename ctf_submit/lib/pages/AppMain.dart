import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginPageState();
  }

}


class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _logoAnimationController;
  Animation<double> _logoAnimation;

  final usernameController = TextEditingController(); // needed to get value of the username and password
  final passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _logoAnimationController = new AnimationController(vsync: this, duration: new Duration(milliseconds: 2000));
    _logoAnimation = new CurvedAnimation(parent: _logoAnimationController, curve: Curves.bounceOut);

    _logoAnimation.addListener(()=>this.setState((){}));
    _logoAnimationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _logoAnimationController.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.black12,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
              image: new AssetImage("images/shellcode.png"),
            fit: BoxFit.cover,
            color: Color.fromRGBO(0, 0, 0,50.0),
            colorBlendMode: BlendMode.darken ,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             // new FlutterLogo(size: _logoAnimation.value*100,),

              new Image(image: AssetImage("images/offseclogo.png"),width: 180*_logoAnimation.value,height: 180*_logoAnimation.value
              ),
              new Form(

                  child: Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(color: Colors.tealAccent,fontSize: 18.0)
                      )
                    ),
                    child: Container(
                      padding: new EdgeInsets.symmetric(vertical: 12.0, horizontal: 36.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            controller: usernameController,
                            decoration: new InputDecoration(
                              labelText: "Enter Username",
                            ),

                            keyboardType: TextInputType.emailAddress,
                          )
                          ,
                          new TextFormField(
                            controller: passwordController,

                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                            ),

                            keyboardType: TextInputType.text,
                            obscureText: true,  // Hide password text when typing
                          ),
                          new Padding(padding: new EdgeInsets.only(top: 24.0)),
                          new MaterialButton(
                              onPressed: (){
//                                return showDialog(
//                                  context: context,
//                                  builder: (context) {
//                                    return AlertDialog(
//                                      // Retrieve the text the user has typed in using our
//                                      // TextEditingController
//                                      content: Text(passwordController.text),
//                                    );
//                                  },
//                                );



                              },
                              textColor: Colors.white,
                            color: Colors.teal,
                            child:
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                      children: <Widget>[
                                        new Text("LOGIN"),
                                        new SizedBox(width: 5.0,),
                                        new Icon(Icons.arrow_forward)
                                      ],
                        )
                      ,
                            
                          )



                        ],
                      ),
                    ),
                  )







              )

            ],


          )
        ],


      )
    );

  }

}