import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/BalikScreen.dart';
import 'package:sokaklardakii_dostumuz/screens/balik_details_screen.dart';

class BalikListPage   extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(

        body: ListView.builder(
            itemCount: balikInfoList.length,
            itemBuilder:( context, index){
              BalikInfo balikInfo = balikInfoList[index];
              return Card(
                child: ListTile(
                  title: Text(balikInfo.title),

                  leading: Image.network(balikInfo.imageUrl),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => BalikDetailsScreen(balikInfo)));
                  },
                ),
              );
            }));
  }
}