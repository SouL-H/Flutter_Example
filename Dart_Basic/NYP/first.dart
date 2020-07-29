main(List<String> args) {
  var classla = TestClass(15, "ahmet", true);
  classla.bilgileriYazdir();

  var nosuz = TestClass.nosuz("murat", false);
  nosuz.bilgileriYazdir();
}

class TestClass {
  int no;
  String ad;
  bool dondur;

  TestClass(this.no, this.ad, this.dondur) {
    print("erişildi");
  }

  TestClass.nosuz(this.ad, this.dondur) {
    print("Nosuz'a ulaşıldı.");
  } // İsimlendirilmiş Sınıf

  void bilgileriYazdir() {
    print(
        "Ogrenci numarasi: ${this.no} adi: ${this.ad} döndürülen: ${this.dondur} ");
  }
}
