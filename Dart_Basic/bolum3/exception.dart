main(List<String> args) {
  try {
    int sonuc = 12~/0;
    print("Bolen: $sonuc");
  } catch(e, s){
    print(" Hatalar $e ve $s");
  }

  // Kendi hata ex yazma.
  try {
    paraYatir(-60);
  }catch(e){
    print("Hata:" + e.hataGoster());
  }
}

 paraYatir(int miktar){
   if(miktar < 0 ){
     throw new ParaYatirmaException();
   }
   else print("Hesabınıza  $miktar TL yatırıldı");
 }
 class ParaYatirmaException implements Exception{
   String hataGoster() => "Negatif sayi girdiniz"; 
 }