main(List<String> args) {
  var k1 = Kare();
  k1.en = 4;
  k1.boy = 4;
  print(k1.alan());
  var k2 = Dikdortgen();
  k2.en = 4;
  k2.boy = 4;
  print(k2.alan());
  k2.mesaj();
}

// Abstact sınıflardan nesne üretilmez.
// var isim = new Sekil(); gibi nesneler üretilmez.
//Gövdesi olmayan sadece tanımı olan metotlara denir.
abstract class Sekil {
  int en;
  int boy;

  void alan();
  void cevre();
  void mesaj() {
    print("seslen ");
  }
}

class Dikdortgen extends Sekil {
  @override
  int alan() {
    return en * boy;
  }

  @override
  int cevre() {
    return 2 * (en + boy);
  }

  @override
  void mesaj() {
    print("yeni mesaj");
    //super.mesaj();
  }
}

class Kare extends Sekil {
  @override
  int alan() {
    return en * boy;
  }

  @override
  int cevre() {
    return 2 * (en + boy);
  }
}
