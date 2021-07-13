import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sokaklardakii_dostumuz/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:sokaklardakii_dostumuz/utils/UploadPost.dart';


class FeedHelpers extends StatelessWidget with ChangeNotifier{

  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      actions: [
        IconButton(
            icon: Icon(Icons.camera_enhance_rounded,
            color: Colors.amberAccent,) ,
            onPressed: (){
              Provider.of<UploadPost>(context,listen: false).selectPostImageType(context);
            })
      ],
      leading: IconButton(
        icon: Icon(Icons.arrow_back,
          color: Theme.of(context).primaryColor,),
        onPressed: () { },
      ),
      title: RichText(
        text: TextSpan(
          text: 'Ana',
          style: TextStyle(
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          children: <TextSpan>[
            TextSpan(
        text: 'Sayfa',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            )
            ),
          ],
        ),
      ),
    );
  }
  Widget feedBody(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: Container(
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('posts').snapshots(),
            builder: (context,snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(
                  child: SizedBox(
                    height: 500.0,
                      width: 400.0,
                  ),
                );

              }
              else{
              return  YuklePosts(context, snapshot);
              }
            },
          ),
          height: MediaQuery.of(context).size.height*0.9,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0),topRight: Radius.circular(18.0),
            ),
          ),

        ),
      ),
    );

  }
  Widget YuklePosts(
      BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
    return ListView(
      children:snapshot.data.docs.map((DocumentSnapshot documentSnapshot){
        return Container(
          height: MediaQuery.of(context).size.height *0.65,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 20.0,
                     //   backgroundImage: NetworkImage(documentSnapshot.data()['userimage']),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(documentSnapshot['caption'],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0
                              ),),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height *0.46,
                  width: MediaQuery.of(context).size.width,
                  child: FittedBox(
                    child: Image.network(documentSnapshot['postimage'],scale: 2,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Icon(FontAwesomeIcons.heart,color: Colors.deepPurple,
                            size: 22.0,),

                          ),
                          Text('0',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      width: 80.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Icon(FontAwesomeIcons.comment,color: Colors.deepPurple,
                              size: 22.0,),

                          ),
                          Text('0',
                            style: TextStyle(
                                color: Colors.lightGreen,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0
                            ),)
                        ],
                      ),
                    ),
                    Container(
                      width: 80.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Icon(FontAwesomeIcons.award,color: Colors.redAccent,
                              size: 22.0,),

                          ),
                          Text('0',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0
                            ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        );
      }).toList());


  }
}