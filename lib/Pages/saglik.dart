import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sokaklardakii_dostumuz/Pages/BalikSaglik_page.dart';
import 'package:sokaklardakii_dostumuz/Pages/BirdSaglik_page.dart';
import 'package:sokaklardakii_dostumuz/Pages/DogSaglik_page.dart';
import 'package:sokaklardakii_dostumuz/Pages/catSaglik_page.dart';
import 'package:sokaklardakii_dostumuz/bloc/navigation_bloc/navigation_bloc.dart';


class SaglikPage extends StatefulWidget {
    //with NavigationStates{
  @override
  _SaglikPageState createState() => _SaglikPageState();
}

class _SaglikPageState extends State<SaglikPage> with SingleTickerProviderStateMixin {
  @override
TabController controller;
  void initState(){
    super.initState();
    controller= new TabController(vsync: this,length: 4,initialIndex: 0 );
  }
  @override
  Widget build(BuildContext context) {

return Scaffold(
  appBar: AppBar(
    title: TabBar(
      controller: controller,
      labelColor:Colors.white,
      unselectedLabelColor: Colors.white,
      tabs:<Widget>[
        Tab(text: 'KÖPEK',),
        Tab(text: 'KEDİ',),
        Tab(text: 'BALIK',),
        Tab(text: 'KUŞ',),
      ],
    ),
  ),
  body: TabBarView(
    controller: controller,
    children:<Widget>[
      DogListPage(),
      CatListPage(),
      BalikListPage(),
      BirdListPage (),
    ],
  ),
);


  }
}