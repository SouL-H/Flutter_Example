main(List<String> args) {
  var k1 = Kopek();
  k1.cins = "Kangal";
  k1.renk = "Siyah";
  k1.yemekYe();
  k1.havla();
  var k2 = Kedi();
  k2.yemekYe();
  k2.miyavla();
}

class Hayvan {
  String renk;
  yemekYe() {
    print("Yemek yiyor");
  }
}

class Kedi extends Hayvan {
  int yas;

  miyavla() {
    print("Kedi miyavladi.");
  }

  @override
  yemekYe() {
    print("Kedi yemek yiyor");
  }
}

//Super parametresi bir üst sınıfdaki aynı methoda ulaş anlamına geliyor super.yemekye();

class Kopek extends Hayvan {
  String cins;

  havla() {
    print("Köpek havladi.");
  }

  @override
  yemekYe() {
    print("köpek yemek yiyor");
  }
}
