import 'package:flutter/material.dart';
import 'package:whatsapp_project/pages/whatsapp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Selamat Datang',
      theme: ThemeData(
       primaryColor:  Color(0xff075E54),
       secondaryHeaderColor: const Color.fromARGB(255, 143, 8, 130)
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}