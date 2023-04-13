import 'package:flutter/material.dart';

import '../yardimcilar/renkler.dart';
import 'home/home_ekrani.dart';

class GirisEkran extends StatefulWidget {
  const GirisEkran({super.key});

  @override
  State<GirisEkran> createState() => _GirisEkranState();
}

class _GirisEkranState extends State<GirisEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/welcome.jpeg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: 
                    const EdgeInsets.symmetric(vertical:20,horizontal: 15 ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Hoşgeldiniz",style: TextStyle(fontSize: 30,color: kWhitewClr,
                    fontWeight: FontWeight.w600,)
                    ,),
                    const SizedBox(
                      height: 15,),
                    const Text("Vakit Kaybetmeden Keşfetmeye Başlamak İçin Hemen Giriş Yap.",
                    style: TextStyle(color: kWhitewClr,fontSize: 16,height: 1.6),
                    ),
                    const SizedBox(height: 15),

                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeEkran()));
                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(color: kWhitewClr,borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/google.png",
                            height: 40,
                            width: 40,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Google İle Giriş Yap",
                            style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.w600))
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )

        ],
      )
    );
  }
}