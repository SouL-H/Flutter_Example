import 'dart:math';

main(List<String> args) {
  List<int> ogrenciNo = List.generate(30, (index) => rast());
  List<Ogrenci> tumOgrenciler =
      ogrenciNo.map((ogrNo) => Ogrenci("Ogrenci $ogrNo Adı", ogrNo)).toList();
  //Listeye farklı no atama
  //ogrenciNo.forEach((suankino) => print("No: $suankino"));
  tumOgrenciler.forEach((suanki) => print("Ogrenci adı: ${suanki}"));
}

int rast() {
  int rastgele = Random().nextInt(50);
  if (rastgele != 0) {
    return rastgele;
  } else {
    int yeni = rast();
    return yeni;
  }
}

class Ogrenci {
  String ad;
  int no;

  Ogrenci(this.ad, this.no);
  @override
  String toString() {
    // TODO: implement toString
    return "$ad ve numarasi $no";
  }
}
