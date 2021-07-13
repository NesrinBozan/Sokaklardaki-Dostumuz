
import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/BalikScreen.dart';
class BalikDetailsScreen extends StatelessWidget{
  final BalikInfo balikInfo;

  BalikDetailsScreen(this.balikInfo);
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text(balikInfo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(balikInfo.imageUrl,
                height: 300,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  balikInfo.description,
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