main(List<String> args) {
  var cagirici = Yapilandirma(50, "ahmet", true);
  print(cagirici.isim);
  print(cagirici.numara);
  cagirici.degerAta = 40;
  cagirici.bilgileriYazdir();
}

class Yapilandirma {
  int numara;
  String isim;
  bool deger;

  set degerAta(int no) {
    if (no <= 0) {
      this.numara = 1;
    } else {
      this.numara = no;
    }
  }

  get degerAta => numara;

  Yapilandirma(this.numara, this.isim, this.deger) {
    print("yapilandirmanin içinde");
  }

  bilgileriYazdir() {
    print("Numara: ${this.numara} - İsim: ${this.isim}- Deger: ${this.deger}");
  }
}
