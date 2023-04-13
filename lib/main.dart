import 'package:flutter/material.dart';
import 'ekranlar/giris_ekrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gezginim',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const GirisEkran(),
    );
  }
}
