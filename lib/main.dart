import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:provider/provider.dart';
import 'package:sokaklardakii_dostumuz/Pages/map.dart';
import 'package:sokaklardakii_dostumuz/Pages/bilgi_.dart';
import 'package:sokaklardakii_dostumuz/Pages/saglik.dart';
import 'package:sokaklardakii_dostumuz/constans/constans.dart';
import 'package:sokaklardakii_dostumuz/custome_widgets/provider.dart';
import 'package:sokaklardakii_dostumuz/login_page.dart';
import 'package:sokaklardakii_dostumuz/screens/Feed_helpers.dart';
import 'package:sokaklardakii_dostumuz/screens/landingService.dart';
import 'package:sokaklardakii_dostumuz/screens/landingUtils.dart';
import 'package:sokaklardakii_dostumuz/screens/splash_screen.dart';
import 'package:sokaklardakii_dostumuz/services/FirebaseOperations.dart';
import 'package:sokaklardakii_dostumuz/services/auth_service.dart';
import 'package:sokaklardakii_dostumuz/sidebar/sidebar_layout.dart';
import 'package:sokaklardakii_dostumuz/utils/UploadPost.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MyApp(),

  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
return Provider(
  auth: AuthService(),

  child:   MaterialApp(
  
    debugShowCheckedModeBanner: false,
  
    theme: ThemeData(
  
      primaryColor: AppConstans.BACKGROUND_COLOR,
  
      accentColor: Colors.white,
  
    ),
  home: HomeController(),

    routes: <String, WidgetBuilder>{
      '/signUp': (BuildContext context) => SignUpPage(authFormType: AuthFormType.signUp),
      '/signIn': (BuildContext context) => SignUpPage(authFormType: AuthFormType.signIn),
      '/home': (BuildContext context) => HomeController(),
    }
  ),

);
  }

}

