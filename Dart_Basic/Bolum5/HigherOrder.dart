main(List<String> args) {
  Function sayiTopla = (s1, s2) => print(s1 + s2);
  metot(5, sayiTopla);

  var fonk = metot3();
  print(fonk(5));
}

//Bir fonksiyon dönderiyorsa değer olarak başka bir fonksiyon alıyorsa higherorderdir.

void metot(int a, Function metot2) {
  print("Sayi $a ");
  metot2(2, 5);
}

Function metot3() {
  Function karesi = (int a) => a * a;
  return karesi;
}
