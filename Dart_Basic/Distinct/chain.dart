import 'dart:async';
import 'dart:math';

//Await Futurenin sonucunu bekler.
//Kullanmak için ilgili fonksiyon async olarak ayarlanmalı.
main(List<String> args) {
  //chain();
  print("\n");
  error();
}

void chain() {
  var future = new Future.value('a').then((v1) {
    //v1 içerinde a var.
    return new Future.value('$v1 b').then((v2) {
      // v2 içeriğinde a b var.
      return new Future.value('$v2 c').then((v3) {
        // v3 içerinde a b c var.
        return new Future.value('$v3 d'); // İçerikte a b c d var.
      });
    });
  });
  future.then(print, onError: print);
}

void error() {
  var random = new Random();
  var future = new Future.delayed(new Duration(seconds: 2), () {
    if (random.nextBool()) {
      return 100;
    } else {
      throw 'Hata alındı';
    }
  }).timeout(new Duration(seconds: 3)); //3 sn geçerse işlemi sonlandır demek.

  var sonuc = future.then(print).catchError(print).whenComplete(() {
    print("islem hatalı ya da başarılı"); //finally block gibi
  });
}
