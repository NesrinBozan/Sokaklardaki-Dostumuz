import 'package:bloc/bloc.dart';
import 'package:sokaklardakii_dostumuz/Pages/AyarlarPage.dart';
import 'package:sokaklardakii_dostumuz/Pages/ExitPage.dart';
import 'package:sokaklardakii_dostumuz/Pages/Takvim.dart';
import 'package:sokaklardakii_dostumuz/Pages/bilgi_.dart';
import 'package:sokaklardakii_dostumuz/Pages/homepage.dart';
import 'package:sokaklardakii_dostumuz/Pages/map.dart';
import 'package:sokaklardakii_dostumuz/screens/Feed_helpers.dart';


enum NavigationEvents{
  HomePageClickedEvent,
  MapPageClickedEvent,
  TakvimPageClickedEvent,
  BilgiPageClickedEvent,
  AyarlarPageClickedEvent,
  ExitPageClickedEvent,
}
abstract class NavigationStates{}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {



  NavigationStates get initialState=>GoogleMapsPage();
  @override
  Stream <NavigationStates> mapEventToState(NavigationEvents event)async*
  {
    switch(event){
      case NavigationEvents.MapPageClickedEvent:

        yield GoogleMapsPage();
      break;
      case NavigationEvents.HomePageClickedEvent:
       yield HomePage();
        break;
        case NavigationEvents.TakvimPageClickedEvent:
      yield TakvimPage();
      break;case NavigationEvents.BilgiPageClickedEvent:
      yield BilgiPage();
      break;
      case NavigationEvents.AyarlarPageClickedEvent:
      yield AyarlarPage();
      break;
      case NavigationEvents.ExitPageClickedEvent:
        yield ExitPage();
        break;
    }
  }

}