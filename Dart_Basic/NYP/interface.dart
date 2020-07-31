main(List<String> args) {
  var tv = Televizyon();
  nesneCalistir(tv);

  var sesSistemi = SesSistemi();
  nesneCalistir(sesSistemi);
}

// Interface kullanıldığında abstracta tanımladığımız method isteğe bağlı kullanılır.
//Fakat interfacede mecbur kullanılması şart olan metotlar yazılır.
// Dartta interface yok.Fakat ona benzer şekilde kullanılır.

nesneCalistir(Kumanda k) {
  k.sesAc();
  k.sesAzalt();
}

class Kumanda {
  void sesAc() {
    print("Kumanda sınıfı ses aç");
  }

  void sesAzalt() {
    print("Kumanda sınıfı ses azalt");
  }
}

class Televizyon implements Kumanda {
  //implement ile interface gibi kullanıyoruz.
  //Extends ile bu zorunlu kullanım kalkar.
  @override
  void sesAc() {
    print("Kumanda sınıfı ses aç");
  }

  @override
  void sesAzalt() {
    print("Kumanda sınıfı ses azalt");
  }
}

class SesSistemi implements Kumanda {
  @override
  void sesAc() {
    print("SesSistemi sınıfı ses aç");
  }

  @override
  void sesAzalt() {
    print("SesSistemi sınıfı ses azalt");
  }
}
