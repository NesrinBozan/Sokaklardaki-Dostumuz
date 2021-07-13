import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sokaklardakii_dostumuz/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:sokaklardakii_dostumuz/custome_widgets/provider.dart';
import 'package:sokaklardakii_dostumuz/services/auth_service.dart';
import 'package:sokaklardakii_dostumuz/sidebar/menu_item.dart';

class SideBar extends StatefulWidget {

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin<SideBar> {
  AnimationController _animationController;
   StreamController<bool>isSidebarOpenedSreamController;
   Stream<bool>isSideBarOpennedStream;
   StreamSink<bool>isSidebarOpenedSink;
  final _animationDuration =const Duration(milliseconds: 500);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this,duration: _animationDuration);
    isSidebarOpenedSreamController=PublishSubject<bool>();
    isSideBarOpennedStream =isSidebarOpenedSreamController.stream;
    isSidebarOpenedSink =isSidebarOpenedSreamController.sink;
  }
  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedSreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

    void onIconPressed(){
    final animationStatus = _animationController.status;
    final isAnimationCompleted= animationStatus==AnimationStatus.completed;
    if(isAnimationCompleted){
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    }else{
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
    }
  @override
  Widget build(BuildContext context) {
    final screenWidth =MediaQuery.of(context).size.width;
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSideBarOpennedStream,
      builder: (context,isSideBarOpenedAsync){
        return  AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom:0,
          left:isSideBarOpenedAsync.data? 0:-screenWidth,
          right: isSideBarOpenedAsync.data ? 0:  screenWidth-45,
          child: Row(
            children: <Widget>[
              Expanded(child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 100,
                    ),
                    ListTile(
                      title: Text("Nesrin",
                      style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w900),
                      ),
                      subtitle: Text(
                        "nesrinnbozan6@gmail.com",
                        style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.w900
                        ),
                      ),
                      leading: CircleAvatar(
                          backgroundImage:  NetworkImage('https://cdn.pixabay.com/photo/2017/05/25/09/22/flower-2342706__340.jpg')

                      ),
                    ),
                    Divider(
                      height: 50,
                      thickness: 0.5,
                      color: Colors.white.withOpacity(0.3),
                      indent: 32,
                      endIndent: 32,
                    ),

                    MenuItem(
                      icon: Icons.location_on,
                      title: "Yardım Bildir",
                      onTap: (){
                        onIconPressed();
                        BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MapPageClickedEvent);
                      },
                    ),
                    MenuItem(
                      icon: Icons.home_filled,
                      title: "Sahiplen/Sahiplendir",

                      onTap: (){
                        onIconPressed();
                        BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.HomePageClickedEvent);
                      },
                    ),
                    MenuItem(
                      icon: Icons.event,
                      title: "Hatırlatıcı",
                      onTap: (){
                        onIconPressed();
                        BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.TakvimPageClickedEvent);
                      },
                    ),

                    MenuItem(
                      icon: Icons.live_help,
                      title: "Faydalı Bilgiler",
                      onTap: (){
                        onIconPressed();
                        BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.BilgiPageClickedEvent);
                      },
                    ),
                    Divider(
                      height: 56,
                      thickness: 0.5,
                      color: Colors.white.withOpacity(0.3),
                      indent: 32,
                      endIndent: 32,
                    ),
                MenuItem(
                  icon: Icons.settings,
                  title: "Ayarlar",
                  onTap: (){
                    onIconPressed();
                    BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.AyarlarPageClickedEvent);
                  },
                ),
                    MenuItem(

                      icon: Icons.exit_to_app,
                      title: "Çıkış",
                    onTap: () {
                      onIconPressed();
                      BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.ExitPageClickedEvent);

                    }
                    ),
                  ],
                ),
              ),
              ),
              Align(
                alignment: Alignment(0,-0.9),
                child: GestureDetector(
                  onTap: (){
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 110,
                      color: Theme.of(context).primaryColor,
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],

          ),
        );
      },

    );
  }
}
class CustomMenuClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Paint paint=Paint();
    paint.color=Colors.white;

    final width =size.width;
    final height = size.height;


    Path path =Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width-1, height/2-20, width, height/2);
    path.quadraticBezierTo(width+1, height/2+20, 10, height-16);
    path.quadraticBezierTo(0, height-8, 0, height);

    path.close();


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
