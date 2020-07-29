main(List<String> args) {
  List<int> numaralar = List(5); // 5 elemanlı liste oluşturuldu.
  numaralar[2] = 5;
  numaralar[1] = 4;

  var farkli = List(3); // String gelirse string olacak , int gelirse int
  farkli[1] = 6;
  farkli[2] = 16;

  for (var item in farkli) {
    print(item);
  }
  numaralar.forEach((sayi) => print(sayi)); // farklı bir foreach döngücü
  List<int> genisliste = List();
  // removeAt(index)
  //remove(aranandeger) siler.
}
