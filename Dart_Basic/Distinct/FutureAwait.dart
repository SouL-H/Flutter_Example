//Sıralı çalışan işlemlerde kullancıları bekletmemek için async metotlar kullanılır.

import 'dart:io';

main(List<String> args) {
  print("Program başladı");

  dosyaGoster();
  print("Program bitti");
}

dosyaGoster() async {
  print("Dosya içeriği için bekle");
  String dosyaicerigi = await dosyaDownload();
  print("Dosya içeriği : $dosyaicerigi");
}

//Düzeltilmeden önce ekran çıktısında Dosya içeriği : Instance of 'Future<String>'
//Bu şekilde yazmaktadır.Çünkü 10 sn beklemesi lazım fakat içerik okunmadığı için normal bilgi yazıyor.
//Bu durumu düzeltmek için async metotu ve fonksiyon önünde await eklediğimizde artık bittikten sonra o fonksiyon devrede oluyor.

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
