
import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/screens/CatScreen.dart';
import 'package:sokaklardakii_dostumuz/screens/cat_details_screen.dart';
class CatListPage   extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(

        body: ListView.builder(
            itemCount: catInfoList.length,
            itemBuilder:( context, index){
              CatInfo catInfo = catInfoList[index];
              return Card(
                child: ListTile(
                  title: Text(catInfo.title),
// subtitle:Text(dogInfo.year.toString()),
                  leading: Image.network(catInfo.imageUrl),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => CatDetailsScreen(catInfo)));
                  },
                ),
              );
            }));
  }
}
