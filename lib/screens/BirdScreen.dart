import 'package:flutter/material.dart';
class BirdInfo{
  String title;
  String description;
  String imageUrl;
//  IconData icon;
  BirdInfo(
      {@required this.title,
        @required this.description,
        @required this.imageUrl});
}
List<BirdInfo> birdInfoList =[
BirdInfo(
title: "PAPAĞAN ATEŞİ",
description:
'  Kuşlarda yaygın olarak görülen enfeksiyon hastalığıdır. Bulaşıcı özelliği ile insanlara bulaşabilen bir hastalıktır. Bulaşıcılığı önlemek adına kuş veya kuş malzemelerinin temizliğine dikkat edilmelidir. Çoğu enfekte kuş belirti göstermeden aylarca bakterileri taşıyabilir. Enfekte kuşlarda rastlanan genel belirtileri ; Titreme veya nefes almakta zorlanma, gözlerden veya burundan akıntı, ishal, yeşil tonlarında dışkı, daha az yemek.  ',
imageUrl:
'https://blog.juenpetmarket.com/wp-content/uploads/2020/09/papagan-atesi-psittacosis-hastaligi-e1601493357261.jpg' ),
  BirdInfo(
      title: "ÇİÇEK HASTALIĞI",
      description:
      '  Halk arasında frengi olarak bilinen çiçek hastalığı Avipox virüsü nedeniyle ortaya çıkmaktadır. Kuşlarda aşılanma yapılmazsa kuşların kesin ve hızlı gerçekleşen ölümlerine sebep olan ciddi bir hastalık türüdür. Deride kahverengi lekelenmeler ve kabuk bağlayan yaralar oluşturmaktadır. Kuşlar arasında bulaşıcılığı yüksektir. ',
      imageUrl:
      'https://vetrehberi.com/wp-content/uploads/2018/11/evcil-kuslarda-cicek-hastaligi.jpg' ),
  BirdInfo(
      title: "İSHAL HASTALIĞI",
      description:
      '  İshal hastalığı mikrobik ve gıdaya bağlı olarak gerçekleşir. Temiz mama, kafes/kümes temizliği, temiz su kullanımı, ortam ısısının dengede olması, rüzgarda ve hava akımında kalmaması hastalığı önlemektedir. İshal hastalığı birçok hastalığın habercisi de olabilir birbirini tekrar eden belirtilerde sağlık kontrolü yapılmalıdır. ',
      imageUrl:
      'https://www.vetbilgi.com/wp-content/uploads/2020/02/muhabbet-kusu-ishal-1-728x410.jpg' ),
  BirdInfo(
      title: "PSİTACİNE HASTALIĞI",
      description:
      ' Viral bir hastalık olan Psitacine hastalığı en fazla genç kuşlarda görülmektedir. Kuşlarda halsizlik, iştahsızlık, kanat ve kuyruk tüylerinde dökülmeler belirtiler arasındadır. İleri seviye hastalıkta gaga da kangrene sebep olabilmektedir. Tüylerde renk değişikliği de görülebilmektedir. Mavi tüylerin beyaz renge, yeşil türlerin sarı renge dönmesi örnektir. ',
      imageUrl:
      'https://www.sirinvet.com/myimages/kus-tuy-yolma.jpeg' ),
  BirdInfo(
      title: " STREPTOCOCCOSİS HASTALIĞI ",
      description:
      ' Güvercinlerde görülen bir hastalıktır. Ayak ve kanat eklemlerinde iltihaplanma ve yara oluşumu. Belirgin kilo kaybı, yeşil tonlarında çamur gibi ishal, kusma, karın ve bölgesinde şişkinlik, kan renginin koyulaşması. Göğüs tüyleri aralanarak bu renk tespit edilebilir. Genel olarak performans kaybı. İleri seviyelerde felç ve ölüm riski taşımaktadır. ',
      imageUrl:
      'https://www.guvercinhastanem.com/images/makaleler/guvercin-bakimi-1--resim-7.jpg' ),
  BirdInfo(
      title: " KAHVERENGİ HİPERTROFİSİ",
      description:
      ' Genellikle yaşlı ve dişi kuşlarda yaygın olarak görülen hormonal bir bozukluktur. Dişi kuşların üreme organını etkileyen tümor oluştuğunda cere rengi değişerek normalde daha fazla büyüme gözlemlenir ',
      imageUrl:
      'https://e-evcil.com/images/upload/makale/WhatsApp%20Image%202020-04-16%20at%2014_18_06.jpeg' ),
  BirdInfo(
      title: "SOLUNUM YOLLARI BOZUKLUĞU",
      description:
      '  Muhabbet kuşu, boğazına bir şeyler takılmış gibi ağzını açıp kapatır; kuyruğundan nefes alıyormuş gibi kuyruğunu sallar. ',
      imageUrl:
      'https://www.pethone.com/wp-content/uploads/2021/03/kuslarda-solunum-yolu-enfeksiyonu-780x470.jpg' ),
  BirdInfo(
      title: "MANTAR",
      description:
      ' Belirtileri, kuşlar bitliymiş gibi tiftiklenirler, tüylerde dökülme olur, vücudundaki kellikler ve görünen yerlerde, kızarıklıklar, pullanma gözükür ve bulaşıcıdır',
      imageUrl:
      'https://lh4.googleusercontent.com/-xpK_K6kG778/VJSQNxpoFbI/AAAAAAAAAPo/hEF2lBjsHAM/w1200-h630-p-k-no-nu/muhabbet-kusu-mantar-hastaligi-ve-cozumu.jpg' ),

];