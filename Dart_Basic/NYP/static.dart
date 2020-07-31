main(List<String> args) {
  var deneme = Ogrenci();
  // staticte artık bu metot geçersiz kılınır deneme.ogrId++;
  Ogrenci.ogrId++; // bu şekilde erişilir.
  deneme.ad = "Ahmet";
  Ogrenci.OgrSayisi();

  print("${deneme.ad} oluşturuldu.Okul Kodu: ${Ogrenci.okulId}'dur");

  var deneme2 = Ogrenci();
  Ogrenci.ogrId++;
  deneme2.ad = "Murat";
  Ogrenci
      .OgrSayisi(); //Artık nesne üzerinden değil sınıf üzerinden eriştik.Static olduğu için.

  print("${deneme2.ad} oluşturuldu.Okul Kodu: ${Ogrenci.okulId}'dur");
}

class Ogrenci {
  String ad;
  static const int okulId = 500; //const sabit demektir.
  // Static olursa nesneye bağlı değil sınıfa bağlı olur.Üstteki arttırdığımızda artık sınıf içinde artar.
  static int ogrId = 0;
  static void OgrSayisi() {
    print("Ogrenci Sayisi: ${ogrId}");
  }
}
