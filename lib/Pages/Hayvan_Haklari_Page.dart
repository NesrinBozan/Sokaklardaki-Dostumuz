import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HaklarPage extends StatefulWidget {
  HaklarPage({Key key}): super (key: key);
  final String title= 'Hayvan Hakları';
  @override
  _HaklarPageState createState() => _HaklarPageState();
}

class _HaklarPageState extends State<HaklarPage> {

  Future<void> _lunched;
  String _launchUrl= 'https://www.linkedin.com/pulse/hayvan-haklari-d%C3%BCnyada-ve-t%C3%BCrkiyede-emin-%C3%B6kten ';
 String _launchUrl2='http://tbbdergisi.barobirlik.org.tr/m2006-62-200 ';
 String _launchUrl3='https://www.ab.gov.tr/files/Tar%C4%B1m%20ve%20Bal%C4%B1k%C3%A7%C4%B1l%C4%B1k%20Ba%C5%9Fkanl%C4%B1%C4%9F%C4%B1/hayvan_haklari__hayvanlarin_korunmasi_ve_refahi.pdf ';
 String _launchUrl4= 'http://www.nilufer.bel.tr/i/pdf/16.pdf ';
 Future<void> _launchInBrowser(String url) async{
    if(await canLaunch(url)){
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else{
      throw 'Could not launch $url';
    }
  }
  Future<void> _launchInBrowser2(String url) async{
    if(await canLaunch(url)){
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else{
      throw 'Could not launch $url';
    }
  }
  Future<void> _launchInBrowser3(String url) async{
    if(await canLaunch(url)){
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else{
      throw 'Could not launch $url';
    }
  }
  Future<void> _launchInBrowser4(String url) async{
    if(await canLaunch(url)){
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else{
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Container(

        child: IntrinsicWidth(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            ElevatedButton(

        style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor, //background color of button
            side: BorderSide(width:3, color:Colors.white), //border width and color
            elevation: 3, //elevation of button
            shape: RoundedRectangleBorder( //to set border radius to button
                borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.all(20)
        ),
                child: const Text("Dünyada ve Türkiye 'de Hayvan Hakları"),

                onPressed: (){
                  _launchInBrowser(_launchUrl);
                }

                ),

              ElevatedButton(

                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor, //background color of button
                      side: BorderSide(width:3, color:Colors.white), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.all(20)
                  ),
                child: const Text("Hayvan Haklarına Genel Bakış"),

                onPressed: (){
                  _launchInBrowser2(_launchUrl2);
                }),
            ElevatedButton(

                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor, //background color of button
                    side: BorderSide(width:3, color:Colors.white), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20)
                ),
                child: const Text("Hayvan Hakları, Hayvanların Korunması ve Refahı"),

                onPressed: (){
                  _launchInBrowser3(_launchUrl3);
                }),
            ElevatedButton(

                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor, //background color of button
                    side: BorderSide(width:3, color:Colors.white), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20)
                ),
                child: const Text("Hayvan Hakları Evrensel Bildirgesi"),

                onPressed: (){
                  _launchInBrowser4(_launchUrl4);
                }),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, //background color of button

                ),
                child:  Text("sddfghjklfdfghjklşlkjhgfghjkllkjhgfghjklkjhghjkjhgfghdffddjkd",style: TextStyle(color: Colors.white70),),

                onPressed: (){}),
          ],

      ),
      ),
      ),
    );
  }
}
