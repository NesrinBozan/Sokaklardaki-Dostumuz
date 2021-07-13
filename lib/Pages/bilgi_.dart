import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/Pages/Barinak_page.dart';
import 'package:sokaklardakii_dostumuz/Pages/saglik.dart';
import 'package:sokaklardakii_dostumuz/Pages/veteriner_page.dart';
import 'package:sokaklardakii_dostumuz/Pages/yardim_projeleri_page.dart';
import 'package:sokaklardakii_dostumuz/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:sokaklardakii_dostumuz/Pages/Hayvan_Haklari_Page.dart';

class BilgiPage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding:EdgeInsets.all(40),
          child: GridView.count(
            crossAxisCount:2,
            children:<Widget>[
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SaglikPage()),
    );
  },
                child: Card(
                  color: Colors.orange[100],
                  margin: EdgeInsets.all(8.0),
                  elevation:10,
                  child:Center(

                      child:Column(
                          mainAxisSize:MainAxisSize.min,
                          children:<Widget>[
                            Image.asset('assets/saglik.png'),
                           // Icon(Icons.home,size:70.0,),
                            Text(
                              'Sağlık',
                              style: TextStyle(fontSize:18),
                            ),
                          ]
                      )
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HaklarPage()),
                  );
                },

                child: Card(
                  margin: EdgeInsets.all(9.0),
                  color: Colors.green[200],
                  elevation:10,
                  child:Center(

                      child:Column(
                          mainAxisSize:MainAxisSize.min,
                          children:<Widget>[

                            Image.asset('assets/file.png'),
                            Text(
                              'Hayvan Hakları',
                              style: TextStyle(fontSize:18),
                            ),
                          ]
                      )
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjeListPage()),
                  );
                },

                child: Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.yellow[300],
                  elevation:10,
                  child:Center(

                      child:Column(
                          mainAxisSize:MainAxisSize.min,
                          children:<Widget>[

                            Image.asset('assets/vet.png'),
                            Text(
                              'Yardım Projeleri',
                              style: TextStyle(fontSize:18),
                            ),
                          ]
                      )
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RehabilitasyonPage()),
                  );

                },

                child: Card(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.deepPurple[200],
                  elevation:10,
                  child:Center(

                      child:Column(
                          mainAxisSize:MainAxisSize.min,
                          children:<Widget>[
                            Image.asset('assets/veteriner.png'),

                            //Icon(Icons.home,size:70.0,),
                            Text(
                              'Kısırlaştırma/Rehabilitasyon Merkezi',
                              style: TextStyle(fontSize:18),
                            ),
                          ]
                      )
                  ),
                ),
              ),

              GestureDetector(
                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BarinakPage()),
                  );
                },

                child: Card(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.brown[200],
                  elevation:10,
                  child:Center(

                      child:Column(
                          mainAxisSize:MainAxisSize.min,
                          children:<Widget>[
                            Image.asset('assets/barinak.png'),
                            Text(
                              'Barınak',
                              style: TextStyle(fontSize:18),
                            ),
                          ]
                      )
                  ),
                ),
              ),

            ],
          ),
        ),





      ),
    );
  }
}





