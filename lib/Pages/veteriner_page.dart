import 'package:flutter/material.dart';
class RehabilitasyonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const <Widget>[

          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Avcılar Belediyesi Veteriner İşleri Müdürlüğü Sokak Hayvanları Kısırlaştırma ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Gümüşpala Mahallesi, Karayolları Mevkii, E-5 yan yol, İgdaş Şantiyesi yanı, Avcılar, İstanbul Telefon: 0 (212) 593 56 86'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple ),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Bahçelievler Hayvan Kısırlaştırma ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Çobançeşme Mahallesi, Sanayi Caddesi, Dış Ticaret Merkezi Karşısı, Bahçelievler Merkez, Bahçelievler, İstanbul Telefon: 0 (212) 652 26 15'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple ),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Bağcılar Belediyesi Kısırlaştırma ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Mahmutbey Mahallesi, İSTOÇ 11. kapı çıkısının yanı, TEM yolu üzeri, Bağcılar, İstanbul Telefon: 0 (212) 659 20 48'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Beşiktaş Belediyesi Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Mustafa İzzet Efendi Sokak, Ortaköy (Mediko1 sitesinin girişinde), İstanbul'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Beylikdüzü Belediyesi Kısırlaştırma ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Adnan Kahveci Mahallesi, Gölboyu Caddesi, Star Mutfak arkası, No: 1, Gürpınar, İstanbul Telefon: 0 (212) 856 22 88'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Beyoğlu Belediyesi Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Bademli Mevkii, Musevi Mezarlığı’nın içi, Beyoğlu, İstanbul Telefon: 0 (212) 210 22 22'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Büyükçekmece Sahipsiz Hayvanlar Bakım, Tedavi ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Çakmaklı Köyü altı, Büyükçekmece, İstanbul'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Esenler Belediyesi Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Çiftehavuzlar Mahallesi, Sarıgöl Caddesi, No: 12, Esenler, İstanbul Telefon: 0 (212) 482 41 16'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Esenyurt Belediyesi Yakuplu Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Haramidere Carreffour Arkası, İstanbul Residence Yanı, Esenyurt, İstanbul'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Gaziosmanpaşa Belediyesi Küçükköy Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Karayolları Mahallesi, 568. Sokak, No: 15, Gaziosmanpaşa (Küçükköy Endüstri Meslek Lisesi’nden 2 km. aşağıda), İstanbul Telefon: 0 (212) 479 47 65'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Güngören Belediyesi Hayvan Toplama ve Kısırlaştırma Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Gençosman Mahallesi, Güngören, İstanbul Telefon: 0 (212) 462 26 40'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('İstanbul Büyükşehir Belediyesi Hasdal Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: E6 Kemerburgaz/Göktürk yolu üzeri, Kemerburgaz, İstanbul Telefon: 0 (212) 360 29 19'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Küçükçekmece Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Sazlıdere Baraj Yolu Üzeri, Kayabaşı Köyü, Küçükçekmece, İstanbul'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),  Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Sarıyer Belediyesi Kısırkaya Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Kısırkaya Köyü Çıkışı, Sarıyer, İstanbul Telefon: 0 (212) 242 52 71'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Silivri Belediyesi Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Yirikçayırı Mevkii, Silivri, İstanbul Telefon: 0 (212) 727 18 63'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),

          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Şişli Belediyesi Hayvan Kısırlaştırma ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Darülaceze Caddesi, No: 70, Okmeydanı Telefon: 0 (212) 221 85 89'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),

          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Zeytinburnu Belediyesi Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Seyid Nizam Caddesi, Silivrikapı Karşısı (Varan Eski Garajı) Zeytinburnu, İstanbul Telefon: 0 (212) 664 61 01'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),

          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Ümraniye Belediyesi Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Hekimbaşı Mevkii, Küçüksu Yolu, Ümraniye, İstanbul Telefon: 0216 630 20 01'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),

          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Üsküdar Belediyesi Sokak Hayvanları Barındırma ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Hekimbaşı Mevkii, Küçüksu Yolu, Kati Atık Tesisleri yanı, Ümraniye, İstanbul'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),

          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Kocaeli Sokak Hayvanlarını Rehabilite Hizmetleri ve Geçici Bakımevi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: D-100 Karayolu Kentsa Girişi, Karatepe'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('İzmir/Aliağa Belediyesi Sokak Hayvanları Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres Çaltıdere Köyü, Aliağa Telefon: 0 232 616 19 80'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Muğla/Dalyan Belediyesi Geçici Hayvan Rehabilite Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Gürpınar Mah. Dalyan'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Muğla/Marmaris Belediyesi Hayvan Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Otobüs Terminali Arkası, Marmaris Telefon: 0252 413 98 82'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('İskenderun Belediyesi Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Meydan Mahallesi Kapalı Yüzme Havuzu Arkası'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Osmaniye Belediyesi Hayvan Bakımevi ve Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Osmaniye Arıtma Tesisi İçi'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Ankara/Çankaya Belediyesi Sahipsiz Hayvan Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Mühye Köyü, Yeşilkent Mahallesi Telefon: 0 312 442 37 18'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Ankara/Cemil Erkök Rehabilitasyon Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Çubuk Sirkeli Yolu, Kızılca Köyü Telefon: 0 312 215 15 55'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Eskişehir/Odunpazarı Belediyesi Hayvan Sağlık Merkezi', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Adres: Altuyolu 12.km, Eskişehir Telefon: 0 222 236 19 70'),
              trailing: Icon(Icons.add_call,color:Colors.deepPurple),
            ),

          ),




        ],
      ),
    );
  }
}
