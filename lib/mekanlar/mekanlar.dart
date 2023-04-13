class MekanBilgi {
  
  final String konum, image, isim, bilgi;
  final int mesafe, zaman;

MekanBilgi({
  required this.bilgi,
  required this.isim,
  required this.image,
  required this.konum,
  required this.mesafe,
  required this.zaman,
   });

}

List places = [
  MekanBilgi(
    image: "assets/images/Get.jpg",
    konum: "Türkiye/Konya",
    isim:  "Mevlana Müzesi",
    mesafe: 10,
    zaman: 3,
    bilgi: "Bugün müze olarak kullanılmakta olan Mevlâna Dergâhı'nın yeri, Selçuklu Sarayı'nın Gül Bahçesi iken bahçe, Sultan Alâeddin Keykubad tarafından Mevlâna'nın babası Sultânü'l-Ulemâ Bâhaeddin Veled'e hediye edilmiştir. Sultânü'l-Ulemâ 12 Ocak 1231 tarihinde vefat edince türbedeki bugünkü yerine defnedilmiştir. Bu defin gül bahçesine yapılan ilk defindir. Sultânü'l-Ulemâ'nın ölümünden sonra kendisini sevenler Mevlâna'ya müracaat ederek babasının mezarının üzerine bir türbe yaptırmak istediklerini söylemişlerse de Mevlâna gök kubbeden daha iyi türbe mi olur diyerek bu isteği reddetmiştir. Ancak kendisi 17 Aralık 1273 yılında vefat edince Mevlâna'nın oğlu Sultan Veled, Mevlâna'nın mezarı üzerine türbe yaptırmak isteyenlerin isteklerini kabul etmiştir. Kubbe-i Hadra (Yeşil Kubbe) denilen türbe dört fil ayağı (kalın sütun) üzerine, 130 bin Selçukî dirhemine Mimar Tebrizli Bedrettin'e yaptırılmıştır. Bu tarihten sonra inşaî faaliyetler hiç bitmemiş 19'uncu yüzyılın sonuna kadar yapılan eklemelerle devam etmiştir."),
  MekanBilgi(
    image: "assets/images/pamukkale.png",
    konum: "Türkiye/Denizli",
    isim:  "Pamukkale",
    mesafe: 300,
    zaman: 3,
    bilgi: "Nüfus olarak Denizli'nin en büyük ilçesi olan Pamukkale; antik çağlardan beri çok önemlikültürlerin merkezi olan, şifalı kaplıcaları ile ünlü bir yerleşim yeridir. Kalsiyum oksit içeren termalsuların oluşturduğu travertenleriyle ünlü Pamukkale, dünyanın sayılı doğal alanlarındandır. Bunedenle Dünyanın Sekizinci Harikası olarak adlandıran Pamukkale ölmeden önce görülecekyerler listenizde mutlaka olmalı. Adını, pamuk gibi bembeyaz travertenleringörüntüsünden Pamukkale ile iç içe olan antik kent Hierapolis ise, şehri kuran Bergama kralınınkarısı Hiera'ya ithafen isimlendirilmiştir.Dünyanın dört bir yanında, Çin'den İran'a, ABD'den Afganistan'a kadar pek çok dramatiktraverten terasları var. Ancak dünyanın hiçbir yerinde, binlerce yılda oluşmuş kireçtaşı üzerinekurulmuş kaplıcalarla kaplı pitoresk traverten oluşumlarının bulunduğu başka bir yer yok. Üstelikburası sütunlu sokaklar, tapınaklar, hamam evleri, nekropolis ve pastoral bir yerleşim yeri olanbir spa kenti."
    ),
  MekanBilgi(
    image: "assets/images/kapadokya.png",
    konum: "Türkiye/Nevşehir",
    isim:  "Kapadokya",
    mesafe: 150,
    zaman: 5,
    bilgi: "Kapadokya bölgesi, doğa ve tarihin dünyada en güzel bütünleştiği yerdir. Coğrafik olaylar Peribacaları'nı oluştururken, tarihi süreçte, insanlar da, bu peribacalarının içlerine ev, kilise oymuş, bunları fresklerle süsleyerek, binlerce yıllık yaşlı medeniyetlerin izlerini günümüze taşımıştır.Roma İmparatoru Augustus zamanında Antik Dönem yazarlarından Strabon 17 kitaplık 'Geographika' adlı kitabında (Anadolu XII,XIII,XIV) Kapadokya Bölgesi'nin sınırlarını güneyde Toros Dağları, batıda Aksaray, doğuda Malatya ve kuzeyde Doğu Karadeniz kıyılarına kadar uzanan geniş bir bölge olarak belirtir.Bu günkü Kapadokya Bölgesi Nevşehir,Aksaray, Niğde, Kayseri ve Kırşehir illerinin kapladığı alandır. Daha dar bir alan olan kayalık Kapadokya Bölgesi ise Uçhisar, Ürgüp, Avanos, Göreme, Derinkuyu, Kaymaklı, Ihlara ve çevresinden ibarettir."
    ),
  MekanBilgi(
    image: "assets/images/Cinque-Terre-Italy.jpeg",
    konum: "İtalya",
    isim: 'Cinque Fort',
    mesafe: 1750,
    zaman: 7,
    bilgi: "Cinque Terre,İtalyan Rivierası'nın engebeli sahillerden oluşmuş bir bölgesidir. La Spezia şehrinin batısında, Ligurya bölgesinde yer alır. Cinque Terre Beş Toprak demektir ve şu köylerden oluşur: Monterosso al Mare, Vernazza, Corniglia, Manarola, ve Riomaggiore. Köyler, sahilleri ve bu köyleri çevreleyen tepelikler Cinque Terre Ulusal Parkı'nın içinde yer alır ve bu bölge UNESCO Dünya Mirasları listesinde yer alır.Yüzyıllar boyunca burada yaşayan insanlar denize bakan bu sert yamaçlarda teraslama yaparak tarım yapmışlardır. Çekiciliğinin bir kısmı da bu bölgede gelişimin sınırlı olmasıdır. Bu bölgenin büyük kısmına yürüme patikaları, tren ve botlarla erişilir. Cinque Terre çok popüler bir turistik bölgedir."
    ),

];