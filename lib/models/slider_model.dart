import 'package:flutter/material.dart';

class SliderModel{
  String title;
  String png;

  SliderModel({this.title,this.png});

}
var sliderList =[
  SliderModel(
    title: "Sokaktaki Dostlarımızın Kahramanı Olun!",

    png:"assets/favorite.png",
  ),
  SliderModel(
    title: "Sahipsiz Canlar Yeni Yuvalarına!",

    png:"assets/house_.png",
  ),
  SliderModel(
    title: "Satın Alma, Sahiplen!",

    png:"assets/pets_.png",
  ),
  SliderModel(
    title: "Onlar için Bir Kap Yemek, Bir Kap Su ",

    png:"assets/pett_bowl.png",
  ),

];