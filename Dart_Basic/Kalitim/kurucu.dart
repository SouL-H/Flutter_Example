main(List<String> args) {
  Kopek k1 = new Kopek("Kangal", "mavi");
  // var k2 = new Kopek();
  //var k3 = Kopek();
  // Nesneyi üç farklı şekilde ürettik hepsi aynı anlam içerir.
  Kopek k2 = Kopek.isimKurucu("Kangal", "beyaz");
  Kopek k3 = Kopek.isimKurucu2("Siyah");
}

class Hayvan {
  String renk;
  Hayvan(String renkk) {
    this.renk = renkk;
    print("Hayvan sınıfı nesnenin rengi : ${renk}");
  }
  Hayvan.isimKurucu() {}
}

//Alt sınıftan bir nesne üretildiğinde ilk baş üst sınıfın özelliği çağırılıyor.
class Kopek extends Hayvan {
  String cins;
  Kopek(String cinss, String renk) : super(renk) {
    this.cins = cinss;
    print("Hayvan sınıfı nesnenin rengi : ${cins} rengi : $renk");
  }

  Kopek.isimKurucu(String cinsler, String renk) : super(renk) {
    this.cins = cinsler;
    print("İsimli kurucu methot. Cins: $cins rengi: $renk");
  }
  Kopek.isimKurucu2(String renk) : super.isimKurucu() {
    print(
        "İsimli Kurucu 2, Rengi: $renk"); // Sadece renk alan üst sınıfı almayan methot alındı.
  }
}
