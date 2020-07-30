main(List<String> args) {
  Er test = new Er();
  Er test2 = Er();

  Asker asker = Asker();
  Yuzbasi ahmet = Yuzbasi();

  hazirOl(asker);
  hazirOl(test); // Yukari çevrim upcasting
  hazirOl(ahmet); // Yukari Cevrim
  Asker yeni = Er();
  hazirOl(yeni);
}

void hazirOl(Asker asker) {
  asker.selamVer();
}

class Asker {
  selamVer() {
    print("Asker selam verdi");
  }
}

class Er extends Asker {
  @override
  selamVer() {
    print("Er selam verdi.");
  }
}

class Yuzbasi extends Asker {
  @override
  selamVer() {
    print("Yuzbasi selam verdi.");
  }
}
