import 'package:flutter/material.dart';
import 'package:gezgin_uyg/mekanlar/mekanlar.dart';
import '../../../yardimcilar/renkler.dart';

class OnerilenlerKismi extends StatelessWidget {
  final MekanBilgi placeInfo;
  final VoidCallback press;
  const OnerilenlerKismi({
    Key? key, required this.placeInfo, required this.press,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 270,
          width: 200,
          decoration: BoxDecoration(
            color: kWhitewClr,
            borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(placeInfo.image))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  placeInfo.isim,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: kPrimaryClr,
                    ),
                    Text(placeInfo.konum,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    )
                  ],
                )
              ]),
            ),
        ),
      ),
    );
  }
}

