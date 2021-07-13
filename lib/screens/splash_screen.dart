import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/custome_widgets/bezier_curve.dart';
import 'package:sokaklardakii_dostumuz/on_boarding_screen/on_boarding_screen.dart';
import 'package:sokaklardakii_dostumuz/on_boarding_screen/slider_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  startTime()async {
    var duration =Duration(seconds: 3);
    return Timer(duration, route);

  }
  route(){
    Navigator.pushReplacement(context,
        MaterialPageRoute(
            builder:(context)=>OnBoardingScreen()
            )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: BezierCurve(),
            child: Container(
              height: 450,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 490),
            child: Text('Sokaklardaki Dostumuz',
              style: TextStyle(
                fontFamily: 'BadScript',
                fontSize: 35,
                color: Colors.white,
              ),
            ),

          ),


                Container(
                   margin: EdgeInsets.only(left: 200, right: 20, top:500),
                  child: CircularProgressIndicator(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  ),

              ],
            ),


    );
  }
}
