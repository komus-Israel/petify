import 'dart:async';
import 'package:flutter/material.dart';
import 'routes.dart';



class SplashScreen extends StatefulWidget {
  @override

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override

  //This function navigates the splash screen to the homepage after 5 secs
  void initState(){
    super.initState();
    Timer(
      Duration(
        seconds: 8
      ), (){
        print('8 sec');
        openHomePage(context);
      }

    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[900],
      body:SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image(
                 image: AssetImage('assets/images/splash_screen.png')

            )

                ),
                //SizedBox(height: 20,),
                Expanded(
                  child:Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Text(
                        'PETIFY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.white,
                            fontSize: 40,
                            fontStyle: FontStyle.italic
                        ),
                ),
                  )

                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'pet boutique',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
