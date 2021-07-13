import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/BirdScreen.dart';
import 'package:sokaklardakii_dostumuz/screens/bird_details_screen.dart';

class BirdListPage   extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(

        body: ListView.builder(
            itemCount: birdInfoList.length,
            itemBuilder:( context, index){
              BirdInfo birdInfo = birdInfoList[index];
              return Card(
                child: ListTile(
                  title: Text(birdInfo.title),

                  leading: Image.network(birdInfo.imageUrl),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => BirdDetailsScreen(birdInfo)));
                  },
                ),
              );
            }));
  }
}