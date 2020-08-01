//Sıralı çalışan işlemlerde kullancıları bekletmemek için async metotlar kullanılır.

import 'dart:io';

main(List<String> args) {
  print("Program başladı");

  dosyaGoster();
  print("Program bitti");
}

dosyaGoster() {
  print("Dosya içeriği için bekle");
  var dosyaicerigi = dosyaDownload();
  print("Dosya içeriği : $dosyaicerigi");
}

Future<String> dosyaDownload() {
  print("İndiriliyor...");
  //sleep(Duration(seconds: 10));
  //Alttaki komutta üstte 10 sn boyunca işin bitmesini bekleyene kadar , akış devam etti iş bittiğinde altta bilgilendirme yazılıd.
  Future<String> sonuc = Future.delayed(Duration(seconds: 10), () {
    return "İndirilen dosya içeriği";
  });
  print("İndirildi");
  return sonuc;
}
