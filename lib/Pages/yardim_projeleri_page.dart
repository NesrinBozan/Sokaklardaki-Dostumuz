import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/ProjeScreen.dart';
import 'package:sokaklardakii_dostumuz/screens/proje_details_screen.dart';

class ProjeListPage   extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
appBar: AppBar(),
        body: ListView.builder(
            itemCount: projeInfoList.length,
            itemBuilder:( context, index){
              ProjeInfo projeInfo = projeInfoList[index];
              return Card(
                child: ListTile(
                  title: Text(projeInfo.title),

                  leading: Image.network(projeInfo.imageUrl),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => ProjeDetailsScreen(projeInfo)));
                  },
                ),
              );
            }));
  }
}