import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/DogScreen.dart';
class DogDetailsScreen extends StatelessWidget{
  final DogInfo dogInfo;

  DogDetailsScreen(this.dogInfo);
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text(dogInfo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(dogInfo.imageUrl,
            height: 300,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dogInfo.description,
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
