import 'package:flutter/material.dart';
class CatInfo{
  String title;
  String description;
  String imageUrl;
//  IconData icon;
  CatInfo(
      {@required this.title,
        @required this.description,
        @required this.imageUrl});
}
  List<CatInfo> catInfoList =[
  CatInfo(
   title: "KEDİ NEZLESİ",
   description:
  ' Birden fazla kedinin aynı ortamda yaşadığı durumlarda yaygın olarak görülen, FVR virüsünün sebep olduğu bulaşıcı bir hastalıktır. Burun akıntısı, öksürük, iştah kaybı, ateş ve hapşırma gibi belirtileri vardır. İlaçla tedavi edilir. ',
   imageUrl:
  'https://www.pisipisim.net/files/news/default/bulasici-kedi-nezlesi-feline-viral-rhinotracheitisd30ff3b6d9386bcdd950.jpg' ),
    CatInfo(
        title: "MİDE ENFEKSİYONU",
        description:
        ' Kedi hastalıklarında yaygın görülen bir hastalık çeşididir. Tüketilen mamaların kalitesiz olması, yabancı cisimlerin tüketilmesi, zehirlenme veya bakteriyel enfeksiyon mide hastalıklarının nedenleri arasındadır. Kedi de kusma ve ishal mide enfeksiyonun belirtileridir. ',
        imageUrl:
        'https://www.ajanimo.com/wp-content/uploads/2016/10/kedi2.jpg' ),
    CatInfo(
        title: "iDRAR YOLU ENFEKSİYONU",
        description:
        ' Erkek kedilerde daha sık rastlanır. İdrar yapmada zorlanmak, idrarı kabın dışına yapmak, kanlı idrar yapmak hastalığın belirtileri arasındadır. Az su içmek, beklemiş su içmek, kum kabının kirli olması, aşırı kilo ve stres hastalığı tetikleyen sebeplerdendir.  ',
        imageUrl:
        'https://www.veteriner-hekim.com/wp-content/uploads/2020/10/kedi-sistitis.jpg' ),
    CatInfo(
        title: "BÖBREK HASTALIKLARI",
        description:
        ' Böbrek hastalıkları doğrudan beslenme ile ilgili olan ve çok sık görülen hastalıktır. Normalden daha fazla su tüketme ve sık sık idrara çıkma,Kanlı ve bulanıkidrar,Kusma durumu,Kilo ve iştah kaybı sık rastlanan belirtilerdir. ',
        imageUrl:
        'https://ajanimo.com/wp-content/uploads/2020/05/b%C3%B6brek.jpg' ),
    CatInfo(
        title: "APSE",
        description:
        ' Genellikle bakterilere bağlı şekilde meydana gelen, daha çok sokağa çıkan ve sokakta yaşayan kedilerde görülen enfeksiyonlardır. Apse, deride ağrılı şişkinliğe, kızarıklığa, ağızda yaralara ve kötü koku oluşuma neden olur.  ',
        imageUrl:
        'https://www.veteriner-hekim.com/wp-content/uploads/2020/11/kedi-absesi.jpg' ),
    CatInfo(
        title: "DİYABET",
        description:
        ' Nedenleri, aşırı kilo, dengesiz beslenme, kronik stres, viral enfeksiyon, kan damarları, kalp sistemi hastalıkları ve iç organların kronik rahatsızlıkları. Belirtileri, artan su içme isteği, sık idrara çıkma, iştah artışı, kilo kaybı, uyuşukluk. ',
        imageUrl:
        'https://www.aktifpet.com/image/cache/catalog/blog/kedi/kedi-diyabet-808x511.jpg' ),
    CatInfo(
        title: "MANTAR HASTALIĞI",
        description:
        ' Kedilerde sık görülen ve kolay bulaşan bir hastalıktır. Genel olarak rastlanan belirtileri; Ciltte kızarıklık, tüy dökme. Deri pullanması, deride kalınlaşma, lenf bezlerinde şişkinlik, kaşınma. Bu belirtileri gözlemlediyseniz kediniz vakit kaybetmeden tedavi edilmelidir. ',
        imageUrl:
        'https://www.kedimag.com/wp-content/uploads/2020/02/kedilerde-mantar-hastaligi-nedir-nasil-anlasilir-tedavisi.jpg' ),
    CatInfo(
        title: "KONJOKTUVİT ",
        description:
        ' Kedilerin göz pınarının altının sürekli ıslak olması alerjik konjoktuvit olduğunun göstergesidir. Enfeksiyon sonucu oluşmuş konjoktuvit ise akıntı koyu renkte, iltihaplıdır. Göz kapakları kızarıktır. Hastalığı evde yeni bitkilere karşı toleranssız olması, kozmetikler, parfümler, deterjanlar tetikleyebilir. ',
        imageUrl:
        'https://www.vetbilgi.com/wp-content/uploads/2015/12/Kedi-Konjoktivit-Belirtileri.jpg' ),
    CatInfo(
        title: "DEPRESYON",
        description:
        ' Kedilerde en sık rastlanan psikolojik rahatsızlıktır.Genellikle çiftleşme ve doğum sonrasında görülür.Belirtileri; Çekingenlik, korkma, sürekli kaçma, beden ısısının yükselmesi, iştahsızlık, saklanma isteği.',
        imageUrl:
        'https://www.petburada.com/Uploads/Blog/Kedi-Depresyonu-8296.jpg' ),
];
