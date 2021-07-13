import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sokaklardakii_dostumuz/screens/landingUtils.dart';
import 'package:sokaklardakii_dostumuz/services/auth_service.dart';

class FirebaseOperations with ChangeNotifier {
 UploadTask imageUploadTask;
  Future uploadUserAvatar(BuildContext context)async{
    Reference imageReference = FirebaseStorage.instance.ref().child(
      'userProfileAvatar/${Provider.of<LandingUtils>(context,listen: false).getUserAvatar.path}/${TimeOfDay.now()}');
    imageUploadTask = imageReference.putFile(Provider.of<LandingUtils>(context,listen: false).getUserAvatar);

    await imageUploadTask.whenComplete(() {
      print('Image upload!');
    });
    imageReference.getDownloadURL().then ((url){
      Provider.of<LandingUtils>(context,listen: false).userAvatarUrl=url.toString();
      print('the user profile avatar url => ${Provider.of<LandingUtils>(context,listen: false).userAvatarUrl}');
     notifyListeners();
    });

  }

//Future createUserCollection(BuildContext context,dynamic data)async{
  //  return FirebaseFirestore.instance.collection('users').doc(Provider.of<AuthService>(context,listen: false).getCurrentUID).set({});
//}
Future uploadPostData (String postId, dynamic data) async{
    return FirebaseFirestore.instance.collection('posts').doc(
      postId
    ).set(data);
}

}