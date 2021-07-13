import 'package:flutter/material.dart';

class DogInfo{
  String title;
  String description;
  String imageUrl;
//  IconData icon;
  DogInfo(
      {@required this.title,
        @required this.description,
        @required this.imageUrl});
}
List<DogInfo> dogInfoList =[
  DogInfo(
      title: "KUDUZ",
      description:
      ' Köpeklerde tükürükte bulunan bir virüsün sebep olduğu, erken tedbir kapsamında aşılanmadığı takdirde, kendisi ve çevresindeki insanları ölümcül tehlikeye sokabileceği tedavisi olmayan bulaşıcı bir hastalıktır. Köpeklerdeki kuduz belirtileri, en kolay teşhis konulan öfke ve saldırganlık belirtisi, aşırı tükürük salgısı, normalden farklı davranarak korkma, huzursuzluk, yutkunamama, çeneyi kontrol edememe, fotofobi ve hidrofobi en temel belirtilerdir. Hastalıktan korumanın en iyi yolu aşılamadır. ',
      imageUrl:
      'https://www.haberso.com/sites/367/uploads/2020/11/17/5f52d623724abe80-1605641786-1605641790.jpg?' ),
  DogInfo(
      title: "GENÇLİK HASTALIĞI",
      description:
      ' Köpekler arasında bulaşıcılığı yüksek olan bir hastalıktır. Hastalıktan korunmanın tek yolu erken aşılanmadır. En yaygın belirtileri çok sık tekrar eden öksürük ve ishaldir. Yüksek ateş, kırmızı gözler, iştah kaybı, uyuklama depresyon, ağır nefes alma gençlik hastalığının diğer belirtileridir. ',
      imageUrl:
      'https://www.miyhav.com/icerik/uploads/2017/12/siyah-kopek-1024x683.jpg' ),

  DogInfo(
      title: "KULAK ENFEKSİYONLARI",
      description:
      ' Köpeklerde çok sık rastlanan bir hastalıktır. Bakteri, parazit, alerjik nedenler, yabancı cisimler ve tümör kulak enfeksiyonlarına sebebiyet veren başlıca etkenlerdir. Kulak sorunları köpekte ciddi huzursuzluğa sebep olduğu için kolay anlaşılabilir. Sık sık kafa sallama, kulak kaşıntısı, kafanın eğik tutulması ve denge kaybı belirtilere örnektir. ',
      imageUrl:
      'https://www.vetbilgi.com/wp-content/uploads/2016/01/kopeklerde-kulak-bakimi-728x410.jpg' ),
  DogInfo(
      title: "İÇ VE DIŞ PARAZİTLER",
      description:
      ' Parazitler hem sizi hem de köpeğinizi etkilemektedir. İç parazitler, bağırsakta, böbreklerde ve karaciğerde görülür ve ciddi hasara neden olurlar.Temel belirtileri şu şekildedir; İştah azalması, anemi, kilo kaybı, kusma, ishal, karında şişlik, kanlı dışkılama ve öksürük. Dış parazitlerin teşhisi iç parazitlere göre daha kolaydır. Göz görülen kene, bit ve pire gibi parazit türlerinin yanında köpeğin tüylerinin matlaşmasından, kaşınmasından, deride kızarıklık ve alerji bulgularından, tüy dökülmesinden, ve deri renginde değişmelerden anlayabilirsiniz. ',
      imageUrl:
      'https://dikkatkopekvar.org/wp-content/uploads/2018/03/cover_article_630_es_ES.jpg' ),
  DogInfo(
      title: "SAÇKIRAN",
      description:
      ' Köpekte bulunan saçkıran, çevresindeki birçok hayvana ve insana bulaştırma olasılığı yüksek, yaygın görülen bir maya enfeksiyonudur. Genellikle vücutta bölgesel tüy dökülmelerine neden olur. Zamanla kendi kendine iyileşme görülse de çevresine bulaştırmaması için tedavi edilmelidir. ',
      imageUrl:
      'https://www.kopekler.com/assets/media/1611777239_WjNm6.jpg' ),
  DogInfo(
      title: "KUSMA VE İSHAL",
      description:
      ' Bu hastalıklar genellikle birbirinin tetikçisidir. İlk bir iki ishal veya kusma göz ardı edilebilir fakat devam etmesi takdirde ciddiye alınıp dikkat edilmesi gereken tehlikeli hastalıklardır. Kusma, köpekte zehirlenme, bağırsak ve mide sorunun habercisi olabilir. Kanlı İshal, köpeklerde görülen ölüme sebebiyet veren, virüs yoluyla bulaşan ciddi bir hastalıktır. Ateş , dışkıdan kal gelmesi, kusma , iştahsızlık belirtilerine dikkat edilip veteriner dahilinde tedavi edilmelidir.  ',
      imageUrl:
      'https://ranteveteriner.com.tr/wp-content/uploads/2019/02/Dog-Diarrhea-Update-Article.jpeg' ),
  DogInfo(
      title: "EKLEM İLTİHABI",
      description:
      ' Genellikle yaşlı ve fazla kilolu köpeklerde görülen bir hastalıktır. Şiddetli ağrı ve harekette zorluğa sebebiyet verir. Eklemdeki ağrıyı azaltarak ve eklemi daha sağlıklı hale getirerek tedavi edilebilir.  ',
      imageUrl:
      'https://www.ajanimo.com/wp-content/uploads/2017/09/shutterstock_114644974.jpg' ),
  DogInfo(
      title: "KANSER",
      description:
      ' Tüm köpek türlerinde görülen ciddi bir rahatsızlıktır. Hareketsizlik, obezite, köpeğin bulunduğu ortamda sigara içilmesi, kalitesiz mama ile beslenmesi köpekte kanser hastalıklarına zemin hazırlar. Kanser belirtileri; Vücutta görülen şişkinlikler, Herhangi bir delikte kanama, iyileşmeyen yaralar, topallama, kilo kaybı, tüy dökme. Erken teşhisle hasatlıkla başa çıkılması mümkündür. ',
      imageUrl:
      'https://ajanimo.com/wp-content/uploads/2017/08/sick-dog-cancer-chemo_joayej_758x426.jpg' ),


];
