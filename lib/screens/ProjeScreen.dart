import 'package:flutter/material.dart';
class ProjeInfo{
  String title;
  String description;
  String imageUrl;
//  IconData icon;
  ProjeInfo(
      {@required this.title,
        @required this.description,
        @required this.imageUrl});
}
List<ProjeInfo> projeInfoList =[
  ProjeInfo(
  title: "SATIN ALMA, SAHİPLEN",
  description:
   '  Satın almak yerine sahiplenerek, hayvan ticaretine katkı sağlamayıp, sokakta gördüğünüz sahipsiz ya da zor durumda olan bir hayvana güvenli ve huzurlu bir yuva açabilirsiniz. Sahiplenme işlemi için sosyal medyadaki sahiplendirme sayfalarında ya da barınaklarda yeni dostunuzu arayabilirsiniz. ',
   imageUrl:
   'https://i.pstimaj.com/img/78/740x0/5fd87e5fae298b8c430953cb.jpg' ),
  ProjeInfo(
      title: " SAHİPLENDİRME AĞINA YARDIM EDİN",
      description:
      ' Hayvan sahiplenmek için uygun koşullara sahip değilseniz, onların sahiplenmesine yardımcı olabilirsiniz. Sosyal medya üzerinden yapılan farkındalık projelerini destekleyip yeni proje fikirleri sunabilirsiniz. Siz de sahiplendirmek istediğiniz dostunuz için çeşitli duyurular yaparak daha fazla insana ulaşıp onlara bir yuva bulabilirsiniz. ',
      imageUrl:
      'https://i0.wp.com/memurlar.net/common/news/images/806625/headline.jpg' ),
  ProjeInfo(
      title: "BİR KAP YEMEK, BİR KAP SU PROJESİ",
      description:
      ' Şehir merkezlerinde yemek veya su ihtiyaçlarını karşılamakta zorlanan sokaktaki dostlarımızın yaşam mücadelesini kolaylaştırmak çok kolay. Özellikle kış ayalarında sokak hayvanları için beslenmek çok önemlidir. Onlara en büyük yardımınız kapınızın önüne bir kap yemek, bir kap su koymaktır. Evinizin önüne arta kalan yemeklerinizi ya da kuru mamayı ve bir kap suyu sokak hayvanlarının kolay ulaşabileceği bölgelere düzenli olarak koyarak sizde sosyal sorumluluk bilincini arttırabilirsiniz.  ',
      imageUrl:
      'https://www.anadoluhayat.com.tr/img_content/88dc4_soguk_2.jpg' ),
  ProjeInfo(
      title: "BİR YUVA DA SEN YAP",
      description:
      '  Sokak hayvanları her mevsim sığınacak bir yuva aralar. Özellikle kışın yuva ihtiyacı onlar için son derece önemlidir. Onların bu çabasını kolaylaştırmak isterseniz kartondan sokak hayvanlarının kolaylıkla sığabileceği bir yuvayı 5 dakikada yapabilirsiniz. Evlerinizin, işletme yerlerinizin önüne ya da ulaşımı kolay olabilecek yerlere bu yuvaları koyarak onların daha sıcak bir alanda barınmasına kolaylık sağlayabilirsiniz.',
      imageUrl:
      'https://www.iyidekor.com/wp-content/uploads/2020/10/kedi-kopek-kulube-2.jpg' ),
  ProjeInfo(
      title: " KORUYUCU AİLE OLUN",
      description:
      '   Barınaklarda satın alınıp bakılamadığı için bırakılmış evcil hayvanlara çoğunlukla rastlayabilirsiniz. Barınaklarda gönüllü olup tıpkı bir koruyucu aile gibi minik bir yavrunun bakımını üstlenebilirsiniz. Yeni doğan yavruların sevgiye ve ilgiye çok ihtiyaçları vardır. Ayrıca barınak ziyaretleri yaparak barınakların ihtiyaçlarını öğrenip bu doğrultuda ihtiyaçlarını karşılayabilir ya da en azından bu ihtiyaç listesini çevrenizle ya da sosyal medyada paylaşarak bu ihtiyaçları karşılanmasına yardımcı olabilirsiniz.',
      imageUrl:
      'https://bingolhurriyetkoleji.com/icerik/uploads/934157.jpg' ),
ProjeInfo(
  title: "ALO 153 HATTINI ARA",
  description: " Sokakta karşılaştığınız tedaviye veya bakıma muhtaç, yaralı, aşısız ya da kısırlaştırılmamış olan sokak hayvanlarına yardım etmek için ALO 153 hattını arayarak, hayvan ambulansını dakikalar içerisinde hayvan dostunuzun yardımına ulaşmasını sağlayabilirsiniz. ",
  imageUrl: 'https://alo153.ibb.gov.tr/assets/logo_head.png'
)

];