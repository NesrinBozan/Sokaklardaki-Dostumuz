import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/custome_widgets/bezier_curve.dart';
import 'package:sokaklardakii_dostumuz/models/slider_model.dart';
class SliderView extends StatelessWidget {

  int index;
  SliderView({this.index});
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 60),
                child: Text('Sokaklardaki Dostumuz',
                  style: TextStyle(
                    fontFamily: 'BadScript',
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),

              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: <Widget>[
                          Container(

                            child: Image.asset(sliderList[index].png),
                            margin: EdgeInsets.only(bottom: 10,top: 130),
                          ),

                          Text(
                            sliderList[index].title,

                            style: TextStyle(
                              fontFamily: 'BadScript',
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Theme.of(context).primaryColor,
                            ),

                          ),

                        ],
                      )
                    ],
                  ),
    ),
            ],
          )
        ],
      ),
    );
  }
}
