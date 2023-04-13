import 'package:flutter/material.dart';
import '../../../yardimcilar/renkler.dart';

class KategoriKismi extends StatelessWidget {
  final String baslik,image;
  final VoidCallback press;
  const KategoriKismi({
    Key? key, required this.baslik, required this.image, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: press,
        child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 55,
            decoration: BoxDecoration(color: kWhitewClr,
            borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(baslik,
                  style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}