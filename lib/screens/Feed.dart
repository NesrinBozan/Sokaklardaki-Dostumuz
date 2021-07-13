
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sokaklardakii_dostumuz/screens/Feed_helpers.dart';

class Feed extends StatelessWidget{
  Widget build(BuildContext context){

    return Scaffold(
      drawer: Drawer(),
      appBar: Provider.of<FeedHelpers>(context,listen: false).build(context),
      body: Provider.of<FeedHelpers>(context,listen: false).feedBody(context),


    );
  }

}