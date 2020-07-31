main(List<String> args) {
  String isim = "ahmet";
  Function isimGoster = () {
    //Burada üst kısıma erişiyoruz.
    isim = "Murat";
    print(isim);
  };

  isimGoster();

  Function konus = () {
    String hi = "Selam";
    Function soyle = () {
      hi = "Selam2";
      print(hi);
    };
    return soyle;
  };
  var fonksiyon1 = konus();
  fonksiyon1();
}
