import 'package:flutter/material.dart';
class BarinakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
      body: ListView(
        children: const <Widget>[

          Card(
        color: Colors.white,
            child: ListTile(
              title: Text('Bakırköy Belediyesi Sokak Hayvanları Geçici Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Ataköy 9.Kısım, Dünya Ticaret Merkezi Arkası, Bakırköy, İstanbul Telefon: 0 (212) 414 97 77'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),

          Card(

            child: ListTile(

              title: Text('Bayrampaşa Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Cevatpaşa Mahallesi, Fidanlık Mevkii (fidanlığın içinde), Bayrampaşa, İstanbul Telefon: 0 (212) 544 73 62'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(
              title: Text('İBB Kısırkaya Sahipsiz Hayvan Geçici Bakımevi ve Bahçeli Yaşam Alanı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Kısırkaya Plajı Yolu Sarıyer İstanbul Telefon: 153'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('SHKD Doğal Yaşam Alanı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: E6 Kemerburgaz/Göktürk yolu üzeri, Hasdal Rehabilitasyon Merkezi Yanı, Kemerburgaz, İstanbul Telefon: 0 (212) 227 72 65'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Mimar Sinan Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Total Benzin İstasyonu Arkası, Mimar Sinan, İstanbul  Telefon: 0 (212) 883 91 75'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Fatih Belediyesi Yedikule Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Sahil Yolu (Kennedy Caddesi) Surdibi, Eski Havagazı Deposu, İstanbul Telefon: 0 (212) 633 58 57'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Adalar Belediyesi Büyükada Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Atahırları Mevkii, Büyük Tur Yolu, Büyükada, İstanbul'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Beykoz Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Mahmut Şevket Paşa Köyü yolu üzeri, 10 km, Beykoz, İstanbul'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Kadıköy Belediyesi Geçici Hayvan Bakım Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Şenol Güneş Bulvarı Yanyol Girişi No:1, Ataşehir, İstanbul Telefon: 0216 415 67 61'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Şile Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Şile Yolu Ağva Girişi 50mt, Şile, İstanbul Telefon: 0216 711 22 74'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Üsküdar Belediyesi Sokak Hayvanları Barındırma ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Hekimbaşı Mevkii, Küçüksu Yolu, Kati Atık Tesisleri yanı, Ümraniye, İstanbul'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Antalya Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Antalya büyükşehir bld. Kepezaltı/Antalya Telefon: 0 242 332 5318'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Bursa/Nilüfer Belediyesi Hayvan Hastanesi Bakım ve Barınma Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Telefon: 0224 280 82 50'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),

          Card(

            child: ListTile(

              title: Text('Bursa/Osmangazi Belediyesi Sahipsiz Hayvanlar Doğal Yaşam Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Hamitler Mah. Kent Mezarlığı yanı 5. km Telefon: 0 241 41 04'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),

          Card(

            child: ListTile(

              title: Text('Edirne Belediyesi Sokak Hayvanları Geçici Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Olin yağ fabrikası yanından girilip, tren yolu geçildikten sonra 2 km uzaklıkta Telefon: 0 284 235 52 31'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),

          Card(

            child: ListTile(

              title: Text('Lüleburgaz Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: İstasyon Mevkii, İstasyon Cad, Eski Mezbaha Arkası'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),

          Card(

            child: ListTile(

              title: Text('Kocaeli Sokak Hayvanlarını Rehabilite Hizmetleri ve Geçici Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: D-100 Karayolu Kentsa Girişi, Karatepe'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),

          Card(

            child: ListTile(

              title: Text('Tekirdağ Belediyesi Sahipsiz Hayvan Toplama ve Islah Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Hayrabolu Üzeri, Hayvan Hastanesi Altı, Tekirdağ Telefon: 0 282 262 36 26'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Tekirdağ/Çorlu Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Telefon: 0 282 651 16 15'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Tekirdağ/Marmara Ereğlisi Yeniçiftlik Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Kamaradere Mahallesi, Servis Yolu Caddesi, Etap Sit. No:17 Marmara Ereğlisi'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Aydın/Söke Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Cumhuriyet Mah. Tekeli Sok. Belediye Tesisleri İçi  Telefon: 0256 512 98 96'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('İzmir/Çeşme Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Belkent Arkası, Çeşme Telefon: 0 232 723 06 34'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('İzmir Büyükşehir Belediyesi Işıkkent Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Telefon: 0232 437 02 08,'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('​İzmir/Menderes, Şopengazi Hayvan Çiftliği', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Deliömerli Köyü, Menderes Telefon: 0 537 244 66 38'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),

          Card(

            child: ListTile(

              title: Text('Kütahya Belediyesi Hayvan Bakım Evi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Tavşanlı Çevreyolu, Kamyon Garajı Üstü, Kütahya Telefon: 0 274 223 60 12'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Manisa Belediyesi Tedavi ve Bakım Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Barbaros Mahallesi, Manisa Telefon: 0 236 234 31 30'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Muğla/Haydos Doğal Yaşam Alanı ve Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Atatürk Köprüsü, Bülüşlü Mevkii Ortaca/Muğla Telefon: 0532 765 68 19'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Milas Belediyesi Geçici Hayvan Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Sarıçay Mevkii, Emek Mahallesi Belediye Arıtma Tesisi Arkası, Milas'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Muğla/THHD Turgutreis Şubesi Geçici Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Telefon: 0 252 382 39 30'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Muğla/BHDD Bodrum Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Telefon: 0 252 316 33 03'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Adana Büyükşehir Belediyesi DOHAYKO Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Balçalı arkası, Hekimköy yolu üzeri, Yüregir Telefon: 0 322 338 62 25'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Kahramanmaraş/Göksun Belediyesi Hayvan Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Telefon: 0 344 714 19 12'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Kahramanmaraş/Türkoğlu Belediyesi Hayvan Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Fizik Tedavi ve Rehabilitasyon Merkezi Arkası, Türkoğlu Telefon: 0 344 618 10 05'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Osmaniye Belediyesi Hayvan Bakımevi ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Osmaniye Arıtma Tesisi İçi'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Bartın Belediyesi Geçici Hayvan Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: İnkumu Yolu Gürgepınarı Mevkii Bartın, Telefon: 0 378 227 25 11'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Bolu Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Asağısoku Mahallesi, Tüp Deposu Yanı Telefon: 0 374 215 67 31'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Giresun Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('HAdres: Etbaşağı Mevkii Seka Telefon: 0 454 216 39 80'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Sinop Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Telefon: 0368 261 18'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Trabzon Belediyesi Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Çukurçayır Beldesi Girişi'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Trabzon/Trahayko Hayvanları Koruma ve Yaşatma Derneği Hayvan Barınağı', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Gazipaşa Mahallesi, Zeytin Sokak, No:10'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),
          Card(

            child: ListTile(

              title: Text('Zonguldak İl Özel İdaresi Geçici Hayvan Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Zonguldak-Ankara Karayolu, Çardak Mevkii, Zonguldak Telefon: 0 372 268 10 54'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),

          Card(

            child: ListTile(

              title: Text('Ankara/Cemil Erkök Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Çubuk Sirkeli Yolu, Kızılca Köyü Telefon: 0 312 215 15 55'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),

          Card(

            child: ListTile(

              title: Text('Eskişehir/Odunpazarı Belediyesi Hayvan Sağlık Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Altuyolu 12.km, Eskişehir Telefon: 0 222 236 19 70'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),

          Card(

            child: ListTile(

              title: Text('Niğde Belediyesi Geçici Hayvan Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Burçak Çayır Mevkii, Niğde'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),
          ),





        ],
      ),
    );
  }
}
