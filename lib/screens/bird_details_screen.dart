
import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/BirdScreen.dart';
class BirdDetailsScreen extends StatelessWidget{
  final BirdInfo birdInfo;

  BirdDetailsScreen(this.birdInfo);
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text(birdInfo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(birdInfo.imageUrl,
                height: 300,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  birdInfo.description,
                  textAlign: TextAlign.justify,
                  style:TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}