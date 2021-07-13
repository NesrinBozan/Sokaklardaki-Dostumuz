import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/CatScreen.dart';
class CatDetailsScreen extends StatelessWidget{
  final CatInfo catInfo;

  CatDetailsScreen(this.catInfo);
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text(catInfo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(catInfo.imageUrl,
                height: 300,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  catInfo.description,
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