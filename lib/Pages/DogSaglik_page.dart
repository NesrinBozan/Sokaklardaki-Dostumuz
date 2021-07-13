import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/DogScreen.dart';
import 'package:sokaklardakii_dostumuz/screens/dog_details_screen.dart';
class DogListPage   extends StatelessWidget{
Widget build(BuildContext context){
  return Scaffold(

      body: ListView.builder(
          itemCount: dogInfoList.length,
          itemBuilder:( context, index){
            DogInfo dogInfo = dogInfoList[index];
            return Card(
              child: ListTile(
                title: Text(dogInfo.title),

                leading: Image.network(dogInfo.imageUrl),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) => DogDetailsScreen(dogInfo)));
                },
              ),
            );
          }));
}
}
