import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'package:sokaklardakii_dostumuz/screens/landingUtils.dart';

class LandingService  with ChangeNotifier{

  showUserAvatar(BuildContext context){
    return showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: MediaQuery.of(context).size.height*0.30,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 150.0),
            child: Divider(
              thickness: 4.0,
              color: Colors.white,
            ),
            ),
            CircleAvatar(
              radius: 80.0,
              backgroundColor: Colors.transparent,
              backgroundImage: FileImage(
                Provider.of<LandingUtils>(context,listen: false).userAvatar)
              ),
      Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          child: Text('Reselect',style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
          ),),
            onPressed:(){
            Provider.of<LandingUtils>(context,listen: false).pickUserAvatar(context,ImageSource.gallery);
            }
                        ),
        MaterialButton(
          color: Colors.grey,
            child: Text('Confirm Image',style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),),
            onPressed:(){

            }
        )
      ],

      ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15.0),

        ),
      );
    });


  }


}