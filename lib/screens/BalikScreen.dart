import 'package:flutter/material.dart';
class BalikInfo{
  String title;
  String description;
  String imageUrl;
//  IconData icon;
  BalikInfo(
      {@required this.title,
        @required this.description,
        @required this.imageUrl});
}
List<BalikInfo> balikInfoList =[
   BalikInfo(
  title: "AMONYUM ZEHİRLENMESİ ",
  description:
    ' Kimyasal olarak arıtılmış musluk suları, akvaryum bitkileri, aşırı besleme, balık dışkısı, birikmiş balık yemi ve temizleme eksikliği sonucu görülen amonyum zehirlenmesi ile balıklarda sürekli su yüzeyine yüzüp hava soluma, solungaçların kırmızı rengini alma, iştahsızlık ve halsizlik gibi belirtilerin görülmesine sebep olur. ',
     imageUrl:
     'https://www.usakgundem.com/images/haberler/2019/09/uzun_omurlu_ve_bakimi_kolay_akvaryum_baliklari_h4965_dd7c5.jpg' ),
  BalikInfo(
      title: " SİLİKON ZEHİRLENMESİ ",
      description:
      ' Balıkların sürekli olarak ağzını sonuna kadar açması ve solungaçların çok fazla çalışması, balığın tüm renginin normalden farklı olarak koyulaşması, su rengin sararıp koyulaşması en belirgin özellikleridir. Amonyum zehirlenmesine neden olan sebepler ile aynıdır. ',
      imageUrl:
      'https://static.wixstatic.com/media/9a8c73_6d2887eb3819488cba17b63624199fcb~mv2.jpg/v1/fit/w_320%2Ch_1000%2Cal_c%2Cq_80/file.jpg' ),

  BalikInfo(
      title: " NİTRİT-NİTRAT ZEHİRLENMESİ",
      description:
      ' Çoğunlukla akvaryumun kurulduğu ilk haftada görülen bir zehirlenmedir. Sağlıklı olarak alınan balıklarda aniden cansızlaşması ve yemeği kesmesi Nitrit zehirlenmesinin belirtisidir. Akvaryuma fazla balık konulmaması, fazla yem atılmaması, sıklıkla su değişimi, düzenli olarak filtreleme veya havalandırma işlemleri yapılması zehirlenmeyi önleyeceği gibi yapılmaması durumunda zehirlenmelere sebep olacaktır ',
      imageUrl:
      'https://www.petburada.com/Uploads/Blog/Akvaryum-Balik-Turleri-a00e.jpg' ),

  BalikInfo(
      title: " YÜZGEÇ ERİMESİ HASTALIĞI",
      description:
      ' Hastalığı tetikleyen en önemli etken strestir. Su kalitesinin kötü olması, su sıcaklığının denge ayarının yanlış olması, akvaryumun kalabalık olması, balıklar arası kovalama olup sürekli mücadeleye uğramaları sonucu oluşan stres yüzgeç erimesinin en yaygın belirtileridir. Yüzgeç kenarlarında renksizleşme, yüzgeç uzunda koyu renkli şerit veya pamuğumsu bir görüntü olması gözlemlenebilir belirtileridir. ',
      imageUrl:
      'https://www.evcilhayvan.market/wp-content/uploads/2018/10/baliklarda-kuyruk-curumesi-yuzgec-erimesi.jpg' ),

  BalikInfo(
      title: " BEYAZ BENEK HASTALIĞI",
      description:
      ' Parazitler sonucu oluşan ve sıklıkla karşılaşılan beyaz benek hastalığı, genellikle yeteri kadar temizlenmeyen akvaryumlarda görülür. Balılar arası bulaşıcılığı vardır. Oluşan benek keseciklerinden önce balıklarda sürekli akvaryuma ya da dekorlara sürtünme, az yem yeme, balıkta gözle görülür renk solması belirtileri ile de beyaz benek hastalığı teşhisi konulabilir',
      imageUrl:
     'https://sosyoekonomik.com/img/images/beyaz-benek-tedavi.jpg' ),

  BalikInfo(
      title: "  DROPSY HASTALIĞI",
      description:
      ' Kötü su koşulları, balıktaki uyum stresi, suda yaşanan ani değişikler bu hastalığı tetikleyen etkenlerdir. Balıklarda görülen balon gibi şişmeler, pulların dışa dönük olması ve yüzme hareketlerini kontrol edememesi Dropsy hastalığının belirtileridir. ',
      imageUrl:
      'https://foto.akvaryum.com/fotolar/191975/080120171322391.jpg' ),

  BalikInfo(
      title: "COLUMNARİS HASTALIĞI ",
      description:
      ' Columnaris bakterileri kötü su kalitesi, yetersiz beslenme ve nakliye işlemlerinin stresi yaşayan balıklara etki eder. Balıklarda ağız, pul kenarları ve yüzgeçlerde beyaz lekeler, ağızda görülen pamuksu yapı ve yüzgeçlerde parçalanmalar belirtileri arasındadır. Birçok tedavi yöntemi vardır. Columnaris hastalığını önleme yöntemleri; İki hafta boyunca yeni balıklar karantinaya alınmalı, su kalitesini yükseltilmeli, dengeli bir diyetle beslendirilmelii ,Balıkları taşıma işleminden önce profilaktik olarak ilaçlanmalıdır ',
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Hydropisie.jpg/250px-Hydropisie.jpg' ),

  BalikInfo(
      title: "  KANLI YÜZGEÇLER ",
      description:
      ' Bir saldırı sonucu oluşmadığı halde balık yüzeyinde özellikle kuyrukta kanlı şeritler var ise buna bir parazit sebep olduğu hastalık türüdür. Tedavisi kolaydır. ',
      imageUrl:
      'https://static.wixstatic.com/media/c40caa_56c48f13ede74ccebc97bec285b2f56d~mv2.jpg/v1/fill/w_369,h_192,al_c,q_80,usm_0.66_1.00_0.01/c40caa_56c48f13ede74ccebc97bec285b2f56dmv2.webp ' ),



];
