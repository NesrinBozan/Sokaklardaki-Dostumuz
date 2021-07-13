import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/login_page.dart';
import 'package:sokaklardakii_dostumuz/models/slider_model.dart';
import 'package:sokaklardakii_dostumuz/on_boarding_screen/slider_view.dart';
import 'package:sokaklardakii_dostumuz/views/first_view.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BoardingState();
}

class BoardingState extends State<OnBoardingScreen>{
  int _currentPage;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentPage=0;}

    _onPageChanged(int value){
      setState(() {
        _currentPage=value;
      });

    }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: <Widget>[
         PageView.builder(
           physics: ClampingScrollPhysics(),
           itemBuilder: (context,i)=>SliderView(index: i),
         controller: _pageController,
           onPageChanged: _onPageChanged,
           scrollDirection: Axis.horizontal,

         ),
         Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[
             Container(
               alignment: Alignment.center,
               child: DotsIndicator(
                 dotsCount: 4,
                 //position:,
                 decorator: DotsDecorator(
                   activeColor: Theme.of(context).primaryColor
                 ),
               ),
             ),
           _currentPage!=sliderList.length-1
             ? Container(
               margin: EdgeInsets.only(top: 20),
               // ignore: deprecated_member_use
               child: FlatButton(onPressed: (){
                 Navigator.of(context).pushReplacementNamed('/signIn');
               },
                   child: Text("SKIP"),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(18.0),
                 side: BorderSide(color: Colors.grey[300])
               ),
               ),
             )
               :Container(
             margin: EdgeInsets.only(top: 20),
             // ignore: deprecated_member_use
             child: FlatButton(onPressed: (){
               Navigator.of(context).pushReplacementNamed('/signIn');
             },
               child: Text("LOGİN",
               style: TextStyle(color: Colors.white),),
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(18.0),

               ),
               color: Theme.of(context).primaryColor,
             ),
           )

           ],
         )
       ],
     ),
   );
  }

}
