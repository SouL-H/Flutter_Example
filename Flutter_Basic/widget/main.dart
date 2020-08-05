import 'package:flutter/material.dart';
import 'package:flutter_app_kurs/widget/widgetTypes.dart';

void main() {

  runApp(MaterialApp(
      title: "Flutter Ders",
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(title:Text("Liste Dersleri"),),
        body: Liste()
          //Diger fonksiyonu çalıştırmak için alttakini çağır.Kütüphaneyi import et.
          //Listeleme()
      )
  ));
}