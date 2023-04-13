import 'package:flutter/material.dart';
import 'package:gezgin_uyg/mekanlar/mekanlar.dart';
import '../../yardimcilar/renkler.dart';

class DetayEkran extends StatefulWidget {
  final MekanBilgi placeInfo;
  const DetayEkran({ Key? key, required this.placeInfo }) : super(key : key);

  @override
  State<DetayEkran> createState() => _DetayEkranState();
}

class _DetayEkranState extends State<DetayEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitewClr,
      body: Stack(
        children: [Image.asset(
          widget.placeInfo.image,
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,),
          SafeArea(
            child: Column(
              children: [
                //Appbar butonu
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Geri Butonu
                      InkWell(
                        onTap:() {
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: kPrimaryClr,
                                shape: BoxShape.circle
                              ),
                              child: const Center(
                                child: Icon(
                                  //Geri Butonu
                                  Icons.arrow_back_ios,
                                  color:kWhitewClr,),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: kWhitewClr,
                              shape: BoxShape.circle
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.bookmark_rounded,
                                color:kPrimaryClr,
                                size: 20,),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kWhitewClr,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10, vertical: 20 ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.placeInfo.isim,
                                style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                        const Icon(
                          Icons.location_on,
                          color: kPrimaryClr,
                        ),
                        const SizedBox(
                                        width: 12,
                                      ),
                        Text(
                          widget.placeInfo.konum,
                          style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        )
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      const Text(
                              "Gezi Detayları",
                                style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                          widget.placeInfo.bilgi,
                          style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          height: 5,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        Row(
                                        children: [
                                        const Text(
                          "Tavsiye Edilen Gezi Süresi",
                          style:  TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        ),
                        const SizedBox(
                                        width: 12,
                                      ),
                        Expanded(
                          child: Text(
                            "${widget.placeInfo.zaman} Gün",
                            style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        )
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                        Row(
                                        children: [
                                        const Text(
                          "Uzaklık ",
                          style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        ),
                        const SizedBox(
                                        width: 12,
                                      ),
                        Expanded(
                          child: Text(
                            "${widget.placeInfo.mesafe} Kilometre",
                            style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        )
                                        ],
                                      ),
                                      
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}