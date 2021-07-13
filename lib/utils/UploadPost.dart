import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:sokaklardakii_dostumuz/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:sokaklardakii_dostumuz/services/FirebaseOperations.dart';

class UploadPost  with ChangeNotifier {
  TextEditingController captionController = TextEditingController();
 File uploadPostImage;
 File get getUploadPostImage => uploadPostImage;
 String uploadPostImageUrl;
 String get getUploadPostImageUrl => uploadPostImageUrl;
 final picker = ImagePicker();
 UploadTask imagePostUploadTask;

 Future pickUploadPostImage(BuildContext context,ImageSource source)async{
   final uploadPostImageVal = await picker.getImage(source: source);
   uploadPostImageVal == null ? print('Select image')
       : uploadPostImage = File(uploadPostImageVal.path);
   print(uploadPostImageVal.path);

   uploadPostImage != null
       ? showPostImage(context)
       :print('Image upload error');
    notifyListeners();
 }
Future uploadPostImageToFirebase()async{
   Reference imageReference = FirebaseStorage.instance.ref().child(
 'posts/${uploadPostImage.path}/${TimeOfDay.now()}'
   );
   imagePostUploadTask =imageReference.putFile(uploadPostImage);
   await imagePostUploadTask.whenComplete(() {
     print('Post image upload storage');
   });
imageReference.getDownloadURL().then((imageUrl){
  uploadPostImageUrl =imageUrl;
});
 notifyListeners();
 }

  selectPostImageType(BuildContext context){
    return showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: MediaQuery.of(context).size.height*0.12,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(

            color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(2)
        ),
        child: Column(
        children:[
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 150.0),
         child: Divider(
           thickness: 4.0,
           color: Theme.of(context).primaryColor,
         ),
       ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                  color: Colors.white,
                  child: Text('Gallery',style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                  ),),

                  onPressed: (){
                    pickUploadPostImage(context, ImageSource.gallery);
                  }),
              MaterialButton(
                  color: Colors.white,
                  child: Text('Camera',style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                  ),),

                  onPressed: (){
                    pickUploadPostImage(context, ImageSource.camera);
                  }
                  )
            ],
          )
        ],
        ),
      );

    });
  }
 showPostImage(BuildContext context){
   return showModalBottomSheet(context: context, builder: (context){
     return Container(
       height: MediaQuery.of(context).size.height*0.50,
       width: MediaQuery.of(context).size.width,
       decoration: BoxDecoration(

           color: Theme.of(context).primaryColor,
           borderRadius: BorderRadius.circular(2)
       ),
       child: Column(
         children:[
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 150.0),
             child: Divider(
               thickness: 4.0,
               color: Colors.white,
             ),
           ),
         Padding(
           padding: const EdgeInsets.only(top:8.0,left: 8.0,right: 8.0),
           child: Container(
             height: 200.0,
             width: 400.0,
             child: Image.file(uploadPostImage,fit: BoxFit.contain,),
           ),
         ),
           Padding(
             padding: const EdgeInsets.only(top:8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [

               MaterialButton(
                   color: Colors.white,
                   child: Text('Reselect',style: TextStyle(
                     color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,
                     decoration: TextDecoration.underline,
                     decorationColor: Colors.white,
                   ),),
                   onPressed:(){
                     selectPostImageType(context);

                   }
               ),
               MaterialButton(
                   color: Colors.white,
                   child: Text('Confirm Image',style: TextStyle(
                     color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,
                     decoration: TextDecoration.underline,
                     decorationColor: Colors.white,
                   ),),
                   onPressed:(){
            uploadPostImageToFirebase().whenComplete((){
              editPostSheet(context);
              print('image uploaded');
            });
                   }
               )
             ],),
           )
         ],
       ),
     );

   });
 }
 editPostSheet(BuildContext context){
   return showModalBottomSheet(
     isScrollControlled: true,
       context: context,
       builder: (context){
         return Container(
           child:  Column(
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 150.0),
                 child: Divider(
                   thickness: 4.0,
                   color: Colors.white,
                 ),
               ),
               Container(
                 child: Row(
                   children: [
                     Container(
                       child: Column(
                         children: [
                           IconButton(icon: Icon(Icons.image_aspect_ratio,color: Theme.of(context).primaryColor,), onPressed: (){}),
                           IconButton(icon: Icon(Icons.fit_screen,color: Theme.of(context).primaryColor,), onPressed: (){}),
                         ],
                       ),
                     ),
                     Container(
                       height: 200.0,
                       width: 300.0,
                       child: Image.file(uploadPostImage,fit: BoxFit.contain),
                     )
                   ],
                 ),
               ),
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     SizedBox(
                       height: 30.0,
                       width: 30.0,
                       child: Icon(Icons.wb_sunny_sharp,color: Theme.of(context).primaryColor,),

                     ),
                     Container(
                       height: 110.0,
                       width: 5.0,
                       color: Theme.of(context).primaryColor,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 8.0),
                       child: Container(
                         height: 120.0,
                         width: 330.0,
                         child: TextField(
                           maxLines: 5,
                           textCapitalization: TextCapitalization.words,
                           inputFormatters: [
                             LengthLimitingTextInputFormatter(200)
                           ],
                           maxLengthEnforced: true,
                           maxLength: 200,
                           controller: captionController,
                           style: TextStyle(
                               color: Theme.of(context).primaryColor,
                             fontSize: 16.0,
                             fontWeight: FontWeight.bold
                           ),
                           decoration: InputDecoration(
                             hintText: 'Add A Description...',
                             hintStyle: TextStyle(
                                 color: Theme.of(context).primaryColor,
                                 fontSize: 14.0,
                                 fontWeight: FontWeight.bold
                             ),
                           ),
                         ),
                       ),
                     )
                   ],
                 ),
               ),
               MaterialButton(
                   child: Text('Share',
         style: TextStyle(
         color: Colors.white,
         fontWeight: FontWeight.bold,
         fontSize: 18.0
         ),
         ),
                   onPressed: () async{
                     Provider.of<FirebaseOperations>(context,listen: false).uploadPostData(captionController.text,{
                       'postimage': getUploadPostImageUrl,
                       'caption': captionController.text,
                       'time': Timestamp.now(),
                     }).whenComplete((){
                       Navigator.pop(context);
                     });
                   },
                 color: Theme.of(context).primaryColor,
               )
             ],
           ),
           height: MediaQuery.of(context).size.height*0.75,
           width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(12.0)
           ),
         );
       });
 }
}