
import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:sokaklardakii_dostumuz/custome_widgets/provider.dart';
import 'package:sokaklardakii_dostumuz/services/auth_service.dart';
class ExitPage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(50),
          alignment: Alignment.center,
          child: IconButton(
            icon: Icon(
              Icons.directions_transit,
            ),
            iconSize: 50,
            color: Colors.green,
            splashColor: Colors.purple,
            onPressed: () async {
              try{
                AuthService auth =Provider.of(context).auth;
                await auth.signOut();
                print("Signed Out");
              }catch(e){
                print (e);
              }
            },
          ),
        ),
      ]),
    );

  }
}
