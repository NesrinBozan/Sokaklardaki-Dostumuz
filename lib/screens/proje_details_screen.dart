import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/ProjeScreen.dart';

class ProjeDetailsScreen extends StatelessWidget{
  final ProjeInfo projeInfo;

  ProjeDetailsScreen(this.projeInfo);
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text(projeInfo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(projeInfo.imageUrl,
                height: 300,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  projeInfo.description,
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