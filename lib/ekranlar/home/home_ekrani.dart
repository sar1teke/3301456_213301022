import 'package:flutter/material.dart';
import '../../mekanlar/mekanlar.dart';
import '../../yardimcilar/renkler.dart';
import '../detayekrani/detay_ekrani.dart';
import 'diger/kategori.dart';
import 'diger/onerilenler.dart';


class HomeEkran extends StatefulWidget {
  const HomeEkran({super.key});

  @override
  State<HomeEkran> createState() => _HomeEkranState();
}

class _HomeEkranState extends State<HomeEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitewClr,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15),
          child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
             [
              Image.asset("assets/icons/home.png",
              height: 30,
              width: 30,
              color: kPrimaryClr,
              ),
              Image.asset("assets/icons/calendar.png",
              height: 30,
              width: 30,
              color: kPrimaryClr,
              ),
              Image.asset("assets/icons/bookmark.png",
              height: 30,
              width: 30,
              color: kPrimaryClr,
              ),
              Image.asset("assets/icons/chat-bubble.png",
              height: 30,
              width: 30,
              color: kPrimaryClr,
              ),
             ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: SingleChildScrollView(
            child: Column(children: [
              //appbar
              Row(
                children: [
                  const CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage("assets/images/deserts.jpeg"),
          
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RichText(text: const TextSpan(
                    text: "Merhaba",
                    style: TextStyle(
                      color: kBlackClr,
                      fontSize: 18,
                    ),
                    children: [
                  TextSpan(
                    text: ",İsmail",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  )
                    ]
                  ))
                ],
              ),
            //Arama Kısmı
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Yeni Dünyalar Keşfet Hadi Başla",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ), const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(100),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(color : kWhitewClr,borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Arat Ve Keşfet",
                            prefixIcon: Icon(Icons.search),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            ),
                      
                      
                        ),
                      ),
                      const CircleAvatar(
                        radius: 22,
                        backgroundColor: kPrimaryClr,
                        child: Icon(
                          Icons.sort_by_alpha_sharp,
                          color: kWhitewClr,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      KategoriKismi(
                        press: (){},
                        image: "assets/images/mountains.jpeg",
                        baslik: "Dağlar",
                      ),
                      KategoriKismi(
                        press: (){},
                        image: "assets/images/forests.jpeg",
                        baslik: "Ormanlar",
                      ),
                      KategoriKismi(
                        press: (){},
                        image: "assest/images/mountains.jpeg",
                        baslik: "Denizler",
                      ),
                      KategoriKismi(
                        press: (){},
                        image: "assest/images/mountains.jpeg",
                        baslik: "Çöller",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Önerilenler
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                 Text(
                  "Önerilenler",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ), const SizedBox(
              height: 10,
            ),
          
              SizedBox(
                height: 350,
                child: ListView.builder(
                  itemCount: places.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 5 ,right: 15),
                      child: Row(
                        children: [
                          OnerilenlerKismi(placeInfo: places[index],
                           press: () { 
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetayEkran(placeInfo: places[index],)));
                            },)
                        ],
                      ),
                    );
                }),
              
          
              ),
          
            ]),
          ),
          ),
      ),
    );
  }
}

