
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/bloc/navigation_bloc/navigation_bloc.dart';
class AyarlarPage extends StatefulWidget with NavigationStates{
  @override
  _AyarlarPageState createState() => _AyarlarPageState();
}

class _AyarlarPageState extends State<AyarlarPage> {
  bool belirsizSifre = true;
   @override
   Widget build(BuildContext context) {
     return Scaffold(

       body: Container(
         padding: EdgeInsets.only(left: 15, top: 20, right: 15),
         child: GestureDetector(
           onTap: (){
             FocusScope.of(context).unfocus();
           },
           child: ListView(
             children: [
               Center(
                 child: Stack(
                   children: [
                     Container(
                     width: 125,
                         height: 125,
                       decoration: BoxDecoration(
                         border: Border.all(width: 3, color: Colors.white),
                       boxShadow: [
                         BoxShadow(
                           spreadRadius: 3,
                           blurRadius: 9,
                           color: Colors.black.withOpacity(0.1)
                         )
                       ],
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           fit: BoxFit.cover,
                           image: NetworkImage('https://cdn.pixabay.com/photo/2017/05/25/09/22/flower-2342706__340.jpg')
                         )

                       ),
                     ),
                     Positioned(
                         bottom: 0,
                         right: 0,

                         child: Container(
                           height: 39,
                           width: 39,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(
                               width: 3,
                               color: Colors.white
                             ),
                               color: Colors.deepPurple
                           ),
                           child: Icon(
                             Icons.edit,
                             color: Colors.white,
                           ),
                         ))
                   ],
                 ),
               ),
               SizedBox(height: 30),
               buildTextField("İsim","Ornek",false),
               buildTextField("Email", "ornek@gmail.com", false),
               buildTextField("Şifre", "******", true),
               buildTextField("Konum", "İstanbul", false),
               SizedBox(height: 30),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   ElevatedButton(
                       onPressed: (){}, child: Text("KAPAT",style: TextStyle(
                       fontSize: 12,
                       letterSpacing: 2,
                       color: Colors.black
                   ),),
                       style: ElevatedButton.styleFrom(
                         padding: EdgeInsets.symmetric(horizontal: 50),
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                       )
                   ),
ElevatedButton(
    onPressed: (){}, child: Text("KAYDET",style: TextStyle(
  fontSize: 12,
  letterSpacing: 2,
  color: Colors.black
),),
style: ElevatedButton.styleFrom(
  primary: Colors.deepPurple,
  padding: EdgeInsets.symmetric(horizontal: 50),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
)
)
                 ],
               )
             ],
           ),
         ),
       ),
     );
   }
   Widget buildTextField(String labelText,String placeholder, bool isPassword){
     return Padding(padding: EdgeInsets.only(bottom: 30),
     child: TextField(
       obscureText: isPassword ? belirsizSifre: false,
       decoration: InputDecoration(
         suffixIcon: isPassword ?
             IconButton(icon: Icon(Icons.remove_red_eye_rounded,color: Colors.black,),
                 onPressed: (){
               setState(() {
                 belirsizSifre = !belirsizSifre;
               });
                 }
             ):null,
             contentPadding: EdgeInsets.only(bottom: 15),
       labelText: labelText,
         floatingLabelBehavior: FloatingLabelBehavior.always,
         hintText: placeholder,
         hintStyle: TextStyle(
           fontSize: 16,
           fontWeight: FontWeight.bold,
           color: Colors.grey
         )
       ),
     ) ,
     );
   }
}
