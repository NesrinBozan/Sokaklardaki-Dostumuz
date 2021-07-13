import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sokaklardakii_dostumuz/bloc/navigation_bloc/navigation_bloc.dart';

class GoogleMapsPage extends StatefulWidget with NavigationStates  {


  @override
  _GoogleMapsPageState createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  Position currentLocation;
  MapType currentMapType = MapType.normal;
  bool mapToogle = false;
  LatLng _center;

  GoogleMapController newGoogleMapController;
  BitmapDescriptor pinLocationIcon;
  BitmapDescriptor markerLocationIcon;
  BitmapDescriptor addmarkerLocationIcon;
  GoogleMapController mapController;
  double bottomPaddingOfMap = 0;
  //final Set<Marker> listMarkers = new Set();

  Completer<GoogleMapController> _controllerGoogleMap = Completer();

  void initState() {
    super.initState();
    setCustomMapPin();
    newMarker();
    addMarker();
  }


  void locationPosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentLocation = position;
    LatLng latLatPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition = new CameraPosition(
        target: latLatPosition, zoom: 14);
    newGoogleMapController.animateCamera(
        CameraUpdate.newCameraPosition(cameraPosition));
  }

  static final CameraPosition _cameraPosition = CameraPosition(
      target: LatLng(41.01384, 28.94966), zoom: 14);

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/pet_foodd.png');
  }

  void newMarker() async {
    markerLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/pet_housee.png');
  }

  void addMarker() async {
    addmarkerLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/vet_pet.png');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: <Widget>[
          Container(
              width: double.infinity,
              child: GoogleMap(
                markers: _createMarker(),
                padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
                mapType: currentMapType,
                myLocationEnabled: true,
                zoomGesturesEnabled: true,
                zoomControlsEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controllerGoogleMap.complete(controller);
                  newGoogleMapController = controller;
                  setState(() {
                    bottomPaddingOfMap = 265.0;
                  });
                  // locationPosition();
                },
                compassEnabled: true,
                initialCameraPosition: _cameraPosition,

              )
            // CameraPosition
          ),


          Container(
            padding: EdgeInsets.only(top: 150, right: 10),
            alignment: Alignment.topRight,
            child: FloatingActionButton(
              child: Icon(Icons.map, size: 30),
              onPressed: _onMapTypeChanged,
            ),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.green,
        onPressed: () => _onButtonPressed(),
      ),
    ); //Scaffold
  }

  void _onMapTypeChanged() {
    setState(() {
      currentMapType =
      currentMapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Theme
                .of(context)
                .primaryColor,
            height: 180,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10),
                  topRight: const Radius.circular(10),
                ),
              ),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        ListTile(
          leading:
          ImageIcon(
            AssetImage("assets/pet_food.png"),
            color: Colors.white,
          ),
          title: Text('Sokak Hayvanı için Beslenme Yardımı Bildir',
            style: TextStyle(
                color: Colors.white
            ),),
          onTap: () => locationPosition(),
        ),
        ListTile(
          leading: ImageIcon(
            AssetImage("assets/pet_house.png"),
            color: Colors.white,
          ),
          title: Text('Sokak Hayvanı için Barınma Yardımı Bildir',
            style: TextStyle(
                color: Colors.white
            ),),
          //onTap: () => _newMarker(),
        ),
        ListTile(
          leading: ImageIcon(
            AssetImage("assets/pet_vett.png"),
            color: Colors.white,
          ),
          title: Text('Sokak Hayvanı için Veteriner Yardımı Bildir',
            style: TextStyle(
                color: Colors.white
            ),),
          onTap: () {},
        ),
      ],
    );
  }




 Set<Marker> _createMarker(){

   return<Marker>[
     Marker(
        markerId: MarkerId("beslenme"),
        position:LatLng(39.91987, 32.85427),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(title: "Sokak Hayvanı için Beslenme İhtiyacı")
      ),
   Marker(
   markerId: MarkerId("1"),
   position: LatLng(40.14192, 29.97932),
   icon: markerLocationIcon,
   infoWindow: InfoWindow(
   title: "Sokak Hayvanı için Barınma İhtiyacı"),
   ),
   Marker(
   markerId: MarkerId("2"),
   position: LatLng(39.64917, 27.88611),
   icon: addmarkerLocationIcon,
   infoWindow: InfoWindow(
   title: "Sokak Hayvanı için Veteriner İhtiyacı")),
   Marker(
   markerId: MarkerId("3"),
   position: LatLng(39.77667, 30.52056),
   icon: pinLocationIcon,
   infoWindow: InfoWindow(
   title: "Sokak Hayvanı için Beslenme İhtiyacı")),
   Marker(
   markerId: MarkerId("4"),
   position: LatLng(40.80276, 29.43068),
   icon: addmarkerLocationIcon,
   infoWindow: InfoWindow(
   title: "Sokak Hayvanı için Veteriner İhtiyacı")),
   Marker(
   markerId: MarkerId("5"),
   position: LatLng(38.41273, 27.13838),
   icon: markerLocationIcon,
   infoWindow: InfoWindow(
   title: "Sokak Hayvanı için Barınma İhtiyacı")),
   Marker(
   markerId: MarkerId("6"),
   position: LatLng(40.19266, 29.08403),
   icon: pinLocationIcon,
   infoWindow: InfoWindow(
   title: "Sokak Hayvanı için Beslenme İhtiyacı")),
     Marker(
         markerId: MarkerId("7"),
         position: LatLng(37.25190, -122.527),
         icon: pinLocationIcon,
         infoWindow: InfoWindow(
             title: "Sokak Hayvanı için Beslenme İhtiyacı")),
     Marker(
         markerId: MarkerId("8"),
         position: LatLng(37.386051, -122.08855),
         icon: pinLocationIcon,
         infoWindow: InfoWindow(
             title: "Sokak Hayvanı için Beslenme İhtiyacı")),
     Marker(
         markerId: MarkerId("8"),
         position: LatLng(37.420508, -122.084419),
         icon: pinLocationIcon,
         infoWindow: InfoWindow(
             title: "Sokak Hayvanı için Beslenme İhtiyacı")),
   ].toSet();

 }}
 //Set<Marker> _newMarker(){
   // return<Marker>[
      //Marker(
       // markerId: MarkerId("Barınma"),
       // position: LatLng(currentLocation.latitude,currentLocation.longitude),
       // icon: markerLocationIcon,
       //   infoWindow: InfoWindow(title: "Sokak Hayvanı için Barınma İhtiyacı")
     // )
   // ].toSet();

 //}
  //Set<Marker> _addMarker(){
    //return<Marker>[
      //Marker(
          //markerId: MarkerId("Saglık"),
          //position: LatLng(currentLocation.latitude,currentLocation.longitude),
          //icon: addmarkerLocationIcon,
        //  infoWindow: InfoWindow(title: "Sokak Hayvanı için Veteriner İhtiyacı")
      //)
    //].toSet();

  //}
//}